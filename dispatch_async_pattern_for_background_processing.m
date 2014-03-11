// dispatch_async Pattern for Background Processing
// Dispatch to do work in the background, and then to the main queue with the results
//
// IDECodeSnippetCompletionPrefix: dispatch
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: 184D9427-0397-47A4-A06D-13CA0209A631
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
dispatch_async(dispatch_get_global_queue(< #dispatch_queue_priority_t priority #>, <#unsigned long flags #> ), ^(void) {
    < #code #>

    dispatch_async(dispatch_get_main_queue(), ^(void) {
        < #code #>
	});
});
