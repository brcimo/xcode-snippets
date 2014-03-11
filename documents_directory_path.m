// Documents Directory Path
// Documents Directory Path
//
// IDECodeSnippetCompletionPrefix: documents
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: E609CBDA-8ABF-4B8B-8022-B10170A13DB6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
NSURL *documentsDirectoryURL = [NSURL URLWithString:[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]];
