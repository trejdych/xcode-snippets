// CellSnippet
// 
//
// IDECodeSnippetCompletionPrefix: CellSnippet
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 7948CF11-9033-4ECF-ABC3-A8209D6EFAF9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:CellIdentifier
                                    forIndexPath:indexPath];
    if (cell == nil) {
        
        cell =
        [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                               reuseIdentifier:CellIdentifier];
        
    }