// tq Shared Instance
// tq shared instance
//
// IDECodeSnippetCompletionPrefix: tq_sharedInstance
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 45D5535E-44FA-491F-8E4B-3251A46D5372
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+ (< #ClassName #> *)sharedInstance
{
	static id sharedInstance = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
	    sharedInstance = [[self alloc] init];
	});
	return sharedInstance;
}
