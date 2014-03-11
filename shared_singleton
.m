// Shared Singleton

// Class method that returns a singleton instance
//
// IDECodeSnippetCompletionPrefix: singleton
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: A559C6D1-E5D8-4CDA-86CE-3B45245DE790
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+ (instancetype)shared <#name #> {
	static < #class #> *_shared <#name #> = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
	    _shared <#name #> = < #initializer #>;
	});

	return _shared <#name #>;
}
