// RestAsynchronous
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: E9D3949D-A529-4CD7-B000-C9BBB7290971
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
NSString *urlString = @"";
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPMethod:@"POST"];
    
    NSDictionary *dict = @{};
    
    NSData *jsondata = [NSJSONSerialization dataWithJSONObject:dict
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:nil];
    [request setValue:[NSString stringWithFormat:@"%lu", (unsigned long)[jsondata length]] forHTTPHeaderField:@"Content-Length"];
    [request setHTTPBody:jsondata];
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        
        NSHTTPURLResponse *httpUrlResponse = (NSHTTPURLResponse*)response;
        
        if (httpUrlResponse.statusCode == 201) {
            
        }
        NSLog(@"response %@", response);
        if (!connectionError) {
            
            
            NSError *error = nil;
            
            id dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
            if (!error) {
                
                NSLog(@"%@", dict);
            }else {
                NSLog(@"error %@",error);
            }
        }else {
            NSLog(@"connectionError = %@", connectionError);
        }
        
    }];
