// CheckError
// Function that extracts human-readable information from OSStatus codes.
//
// IDECodeSnippetCompletionPrefix: checkerror
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: E3CC39F1-1BB5-49FF-83AB-9D9A6025B690
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
static void CheckError(OSStatus error, const char *operation)
{
	if (error == noErr) {
		return;
	}

	char str[20];
	*(UInt32 *)(str + 1) = CFSwapInt32HostToBig(error);
	if (isprint(str[1]) && isprint(str[2]) && isprint(str[3]) && isprint(str[4])) {
		str[0] = str[5] = '\'';
		str[6] = '\0';
	}
	else {
		sprintf(str, "%d", (int)error);
	}

	fprintf(stderr, "[Error] %s (%s)\n", operation, str);
	exit(1);
}
