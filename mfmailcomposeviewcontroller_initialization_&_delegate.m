// MFMailComposeViewController Initialization & Delegate
// Methods required to use the iOS Mail Composer
//
// IDECodeSnippetCompletionPrefix: mail
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: 56293294-A2D0-4101-8D7A-F845CA43E284
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#import <MessageUI/MessageUI.h>

- (void)presentModalMailComposerViewController:(BOOL)animated
{
	if ([MFMailComposeViewController canSendMail]) {
		MFMailComposeViewController *composeViewController = [[MFMailComposeViewController alloc] init];
		composeViewController.mailComposeDelegate = self;

		[composeViewController setSubject: < #Subject #>];
		[composeViewController setMessageBody: < #Body #> isHTML:YES];
		[composeViewController setToRecipients:@[< #Recipients #>]];

		[self presentModalViewController:composeViewController animated:animated];
	}
	else {
		[[[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Error", nil) message:NSLocalizedString(@"<#Cannot Send Mail Message#>", nil) delegate:nil cancelButtonTitle:NSLocalizedString(@"OK", nil) otherButtonTitles:nil] show];
	}
}

#pragma mark - MFMailComposeViewControllerDelegate

- (void)mailComposeController:(MFMailComposeViewController *)controller
          didFinishWithResult:(MFMailComposeResult)result
                        error:(NSError *)error
{
	if (error) {
		NSLog(@"%@", error);

		< #statements #>
	}

	[self dismissModalViewControllerAnimated:YES];
}
