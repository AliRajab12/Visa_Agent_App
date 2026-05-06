// ignore_for_file: unnecessary_brace_in_string_interps

//import 'package:somi/core/localization/app_localizations_delegate.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension IntlContextExtensions on BuildContext {
  AppLocalizations get intl => AppLocalizations.of(this);
}

extension IntlStateExtensions on State {
  AppLocalizations get intl => AppLocalizations.of(context);
}

class AppLocalizations {
  //static AppLocalizationsDelegate delegate = AppLocalizationsDelegate();

  static AppLocalizations of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations)!;

  String get welcomeSomi => Intl.message(
        'Welcome to Somi',
        name: 'welcomeSomi',
      );

  String get enterPhoneNumberHint => Intl.message(
        'Enter your phone number',
        name: 'enterPhoneNumberHint',
      );

  String get enterPhoneNumber => Intl.message(
        'Enter phone number',
        name: 'enterPhoneNumber',
      );

  String get enterPhoneNumber1 => Intl.message(
        'Enter phone number1',
        name: 'enterPhoneNumber1',
      );
  String get checkPhone => Intl.message(
        'Check your phone',
        name: 'checkPhone',
      );

  String get checkPhoneDescription => Intl.message(
        'We have sent you the verification code ',
        name: 'checkPhoneDescription',
      );

  String get sendCode => Intl.message(
        'Send Code',
        name: 'sendCode',
      );

  String get sendingCode => Intl.message(
        'Sending Code',
        name: 'sendingCode',
      );

  String get enterPhoneNumberDescription => Intl.message(
        'Enter your number to create account or login',
        name: 'enterPhoneNumberDescription',
      );

  String userWelcome(String name) => Intl.message(
        'Welcome, $name',
        name: 'userWelcome',
        args: [name],
        examples: const {
          'name': 'John',
        },
        desc: 'A short welcome message displayed on the home screen',
      );

  String get somiBannnerTitle => Intl.message(
        '🎉 Great car rental offer from Somi',
        name: 'somiBannnerTitle',
      );

  String get takemethere => Intl.message(
        'Take me there',
        name: 'takemethere',
      );

  String get badUsernamePassword => Intl.message(
        'The email or password is incorrect',
        name: 'badUsernamePassword',
      );

  String get passwordExpired => Intl.message(
        'Your password has expired, please reset your password to continue.',
        name: 'passwordExpired',
      );

  String get connectionProblemsDialogHeader => Intl.message(
        'Connection problems',
        name: 'connectionProblemsDialogHeader',
      );

  String get connectionProblemsString => Intl.message(
        'Unable to establish a secure network connection. Please try again.',
        name: 'connectionProblemsString',
      );

  String get communicationError => Intl.message(
        'An error has occurred while trying to communicate with our servers. Please check your network connection and try again.',
        name: 'communicationError',
      );

  String get checkInternetConnection => Intl.message(
        'Check Internet Connection',
        name: 'checkInternetConnection',
        desc:
            "A short message displayed when there is an issue with the user's internet connection",
      );

  String get requiredFieldEmail => Intl.message(
        'Email is required',
        name: 'requiredFieldEmail',
      );

  String get requiredFieldPassword => Intl.message(
        'Password is required',
        name: 'requiredFieldPassword',
      );

  String get requiredFieldName => Intl.message(
        'Name is required',
        name: 'requiredFieldName',
      );

  String get logoutReasonSessionExpired => Intl.message(
        "Due to your organization's security policy, you have been logged out of the session. Please log in again.",
        name: 'logoutReasonSessionExpired',
        desc:
            'An explanation displayed to the user on the login screen after the app suddenly logs them out when their session expires',
      );

  String get tryAgain => Intl.message(
        'Try Again',
        name: 'tryAgain',
        desc:
            'Text for button in areas where the user can retry a failed action',
      );

  String get okay => Intl.message(
        'Okay',
        name: 'okay',
      );

  String get follow => Intl.message(
        'Follow',
        name: 'follow',
      );

  String get following => Intl.message(
        'Following',
        name: 'following',
      );

  String get saved => Intl.message(
        'Saved',
        name: 'saved',
      );

  String get markComplete => Intl.message(
        'Mark complete',
        name: 'markComplete',
      );

  String get markIncomplete => Intl.message(
        'Mark Incomplete',
        name: 'markIncomplete',
      );

  String get completed => Intl.message(
        'Completed',
        name: 'completed',
      );

  String get savedForLater => Intl.message(
        'Item saved for later',
        name: 'savedForLater',
      );

  String get itemUnsaved => Intl.message(
        'Item removed from saved',
        name: 'itemUnsaved',
      );

  String get alreadyCompleted => Intl.message(
        'That item has already been completed',
        name: 'alreadyCompleted',
      );

  String get learnHow => Intl.message(
        'Learn how',
        name: 'learnHow',
      );

  String get saveForLater => Intl.message(
        'Save for later',
        name: 'saveForLater',
      );

  String get forgotPassword => Intl.message(
        'Forgot Password?',
        name: 'forgotPassword',
      );

  String get forgotPasswordEmailSent => Intl.message(
        'We sent the Password Reset email to the email address on file for your account. If you do not receive this email, contact your organization.',
        name: 'forgotPasswordEmailSent',
      );

  String get continueButtonPhone => Intl.message(
        'Continue with number',
        name: 'continueButtonPhone',
      );

  String get continueButtonApple => Intl.message(
        'Continue with apple',
        name: 'continueButtonPhone',
      );

  String get continueButtonGoogle => Intl.message(
        'Continue with google',
        name: 'continueButtonGoogle',
      );

  String get next => Intl.message(
        'Next',
        name: 'next',
      );

  String get searchForPeopleOrGroups => Intl.message(
        'Search for people or groups',
        name: 'searchForPeopleOrGroups',
      );

  String get tellWhyYouRecommendThis => Intl.message(
        'Add a note on why you are sharing this',
        name: 'tellWhyYouRecommendThis',
      );

  String get tellWhyYouAssignedThis => Intl.message(
        'Add a note on why you are assigning this',
        name: 'tellWhyYouAssignedThis',
      );

  String sendToPeople(int count) => Intl.plural(
        count,
        one: 'Send to $count person',
        other: 'Send to $count people',
        name: 'sendToPeople',
        args: [count],
      );

  String get addMessage => Intl.message(
        'Add Message',
        name: 'addMessage',
      );

  String get recommendationsSendError => Intl.message(
        'There was an error sharing the content',
        name: 'recommendationsSendError',
      );

  String get itemRecommended => Intl.message(
        'Item shared',
        name: 'itemRecommended',
      );

  String get itemAssigned => Intl.message(
        'Item assigned',
        name: 'itemAssigned',
      );

  String get savedToQueue => Intl.message(
        'Saved for later',
        name: 'savedToQueue',
      );

  String get changePassword => Intl.message(
        'Choose a new password',
        name: 'changePassword',
      );

  String get resetPasswordError => Intl.message(
        'There was an error resetting your password.',
        name: 'resetPasswordError',
      );

  String get recommend => Intl.message(
        'Share',
        name: 'recommend',
      );

  String get viewDetails => Intl.message(
        'View Details',
        name: 'viewDetails',
        desc: 'View more details of an item',
      );

  String get setDueDate => Intl.message(
        'Set due date',
        name: 'setDueDate',
      );

  String get chooseDate => Intl.message(
        'Choose date >',
        name: 'chooseDate',
      );

  String get makeAssignment => Intl.message(
        'Make assignment',
        name: 'makeAssignment',
      );

  String get dismiss => Intl.message(
        'Dismiss',
        name: 'dismiss',
      );

  String get reportAProblem => Intl.message(
        'Report a problem',
        name: 'reportAProblem',
      );

  String get explainTheProblemYouExperienced => Intl.message(
        'Explain the problem you experienced…',
        name: 'explainTheProblemYouExperienced',
      );

  String get reportProblem => Intl.message(
        'Report problem',
        name: 'reportProblem',
      );

  String get send => Intl.message(
        'Send',
        name: 'send',
      );

  String get reported => Intl.message(
        'Message sent, thanks!',
        name: 'reported',
      );

  String get takeawayHint => Intl.message(
        'What did you learn from this?',
        name: 'takeawayHint',
      );

  String get save => Intl.message(
        'Save',
        name: 'save',
      );

  String takeawayViewMore(int count) => Intl.message(
        'View $count more',
        name: 'takeawayViewMore',
        args: [count],
      );

  String get readMore => Intl.message(
        'Read more',
        name: 'readMore',
      );

  String get liked => Intl.message(
        'Liked',
        name: 'liked',
      );

  String get like => Intl.message(
        'Like',
        name: 'like',
      );

  String get tellUsWhyThisContentIsInappropriate => Intl.message(
        'Tell us why this content is inappropriate…',
        name: 'tellUsWhyThisContentIsInappropriate',
      );

  String get flagAsInappropriate => Intl.message(
        'Flag as inappropriate',
        name: 'flagAsInappropriate',
      );

  String get delete => Intl.message(
        'Delete',
        name: 'delete',
      );

  String get inappropriateComment => Intl.message(
        'This comment is hidden (inappropriate)',
        name: 'inappropriateComment',
      );

  String get inappropriateReply => Intl.message(
        'This reply is hidden (inappropriate)',
        name: 'inappropriateReply',
      );

  String get removeItem => Intl.message(
        'Remove item',
        name: 'removeItem',
      );

  String get dismissAssignedConfirmationTitle => Intl.message(
        'Are you sure you want to remove this?',
        name: 'dismissAssignedConfirmationTitle',
      );

  String get dismissAssignedConfirmationMessage => Intl.message(
        'This will no longer be assigned to you',
        name: 'dismissAssignedConfirmationMessage',
      );

  String get dialogConfirmation => Intl.message(
        'Yes, I\'m sure',
        name: 'dialogConfirmation',
      );

  String notificationsRequired(int count) => Intl.plural(
        count,
        one: 'You have $count Required Learning item',
        other: 'You have $count Required Learning items',
        name: 'notificationsRequired',
        args: [count],
      );

  String get userBlocked => Intl.message(
        'Your account has been locked. Please contact your administrator.',
        name: 'userBlocked',
      );

  String get emptyRecommendedTitle => Intl.message(
        'No Shared Items',
        name: 'emptyRecommendedTitle',
      );

  String get emptyRecommendedMessage => Intl.message(
        'Your shared items will show here',
        name: 'emptyRecommendedMessage',
      );

  String get emptyRecommendedHeaderTitle => Intl.message(
        'Shared Items',
        name: 'emptyRecommendedHeaderTitle',
        desc:
            'Used for displaying empty shared items as title above image when shared items have an empty list',
      );

  String get emptyRecommendedHeaderMessage => Intl.message(
        'Items shared with you and groups you are in are collected here to be reviewed and completed.',
        name: 'emptyRecommendedHeaderMessage',
        desc:
            'Used for displaying shared message above image when shared items have an empty list',
      );

  String get emptyTodayTitle => Intl.message(
        'Good job!',
        name: 'emptyTodayTitle',
      );

  String get emptyTodayMessage => Intl.message(
        'You completed all the items on your feed. Your brain thanks you.',
        name: 'emptyTodayMessage',
      );

  String get emptySavedTitle => Intl.message(
        'No Saved Items',
        name: 'emptySavedTitle',
      );

  String get emptySavedHeaderTitle => Intl.message(
        'Saved Items',
        name: 'emptySavedHeaderTitle',
        desc:
            'Used for displaying saved title as header when saved items have an empty list',
      );

  String get emptySavedHeaderMessage => Intl.message(
        'Saved items can be collected and completed or shared at a later date.',
        name: 'emptySavedHeaderMessage',
        desc:
            'Used for displaying empty state message above image when saved items have an empty list',
      );

  String get emptySavedMessage => Intl.message(
        'Your saved items will show here',
        name: 'emptySavedMessage',
        desc:
            '[saveIcon] is a placeholder for an inline image and should be kept exactly as is',
      );

  String get followers => Intl.message(
        'Followers',
        name: 'followers',
      );

  String countFollowers(int count) => Intl.plural(
        count,
        one: '$count Follower',
        other: '$count Followers',
        name: 'countFollowers',
        args: [count],
        examples: const {
          'count': '100',
        },
        desc: 'Used for displaying a user\'s follower count',
      );

  String countFollowing(int count) => Intl.plural(
        count,
        other: '$count Following',
        name: 'countFollowing',
        args: [count],
        examples: const {
          'count': '100',
        },
        desc: 'Used for displaying how many people a user follows',
      );

  String get authoring => Intl.message(
        'Authoring',
        name: 'authoring',
      );

  String get removeFromSaved => Intl.message(
        'Remove from saved',
        name: 'removeFromSaved',
      );

  String get pathwayIsEmpty => Intl.message(
        'This pathway is empty',
        name: 'pathwayIsEmpty',
      );

  String get pathwayStillWorkInProgress => Intl.message(
        'This pathway is still a work in progress',
        name: 'pathwayStillWorkInProgress',
      );

  String get lessonIsEmpty => Intl.message(
        'This lesson is empty',
        name: 'lessonIsEmpty',
      );

  String get lessonStillWorkInProgress => Intl.message(
        'This lesson is still a work in progress',
        name: 'lessonStillWorkInProgress',
      );

  String get noPathwaysToShow => Intl.message(
        'No pathways to show',
        name: 'noPathwaysToShow',
      );

  String get targetIsEmpty => Intl.message(
        'This plan is empty',
        name: 'targetIsEmpty',
      );

  String get targetStillWorkInProgress => Intl.message(
        'This plan is still a work in progress',
        name: 'targetStillWorkInProgress',
      );

  String get noTargetsToShow => Intl.message(
        'No plans to show',
        name: 'noTargetsToShow',
      );

  String get profileEmpty => Intl.message(
        'Profile is empty',
        name: 'profileEmpty',
      );

  String get noTrackedLearningYet => Intl.message(
        'You haven\'t tracked any learning yet',
        name: 'noTrackedLearningYet',
      );

  String get signOut => Intl.message(
        'Sign out',
        name: 'signOut',
      );

  String get addToTarget => Intl.message(
        'Add to plan',
        name: 'addToTarget',
      );

  String get shareVia => Intl.message(
        'Share via',
        name: 'shareVia',
      );

  String get targets => Intl.message(
        'Plans',
        name: 'targets',
      );

  String get books => Intl.message(
        'Books',
        name: 'books',
      );

  String get courses => Intl.message(
        'Courses',
        name: 'courses',
      );

  String get videos => Intl.message(
        'Videos',
        name: 'videos',
      );

  String get people => Intl.message(
        'People',
        name: 'people',
      );

  String get articles => Intl.message(
        'Articles',
        name: 'articles',
      );

  String get pathways => Intl.message(
        'Pathways',
        name: 'pathways',
      );

  String get externalResources => Intl.message(
        'External resources',
        name: 'externalResources',
      );

  String skillCount(int count) => Intl.plural(
        count,
        one: '$count skill',
        other: '$count skills',
        name: 'skillCount',
        args: [count],
      );

  String get viewAll => Intl.message(
        'View all',
        name: 'viewAll',
      );

  String get join => Intl.message(
        'Join',
        name: 'join',
      );

  String get joined => Intl.message(
        'Joined',
        name: 'joined',
      );

  String get groups => Intl.message(
        'Groups',
        name: 'groups',
      );

  String get requestMembership => Intl.message(
        'Request Membership',
        name: 'requestMembership',
      );

  String get requestPending => Intl.message(
        'Request Pending',
        name: 'requestPending',
      );

  String get leaveGroupTitle => Intl.message(
        'Are you sure you want to leave the group?',
        name: 'leaveGroupTitle',
      );

  String get leaveGroupMessage => Intl.message(
        'You will no longer receive group emails or items shared to the group',
        name: 'leaveGroupMessage',
      );

  String get emptyGroupFeedTitle => Intl.message(
        'You have not joined any groups',
        name: 'emptyGroupFeedTitle',
      );

  String get emptyGroupFeedAction => Intl.message(
        'Join groups',
        name: 'emptyGroupFeedAction',
      );

  String get addSkills => Intl.message(
        'Add Skills',
        name: 'addSkills',
      );

  String get collaborators => Intl.message(
        'Collaborators',
        name: 'collaborators',
      );

  String get visibility => Intl.message(
        'Visibility',
        name: 'visibility',
      );

  String get done => Intl.message(
        'Done',
        name: 'done',
      );

  String get search => Intl.message(
        'Search',
        name: 'search',
      );

  String get noSearchResult => Intl.message(
        'No Results',
        name: 'noSearchResult',
      );

  String get emptySearchDescription => Intl.message(
        'Try to change your search term or filters',
        name: 'emptySearchDescription',
        desc: 'Description for why a user received an empty search result',
      );

  String get searchInput => Intl.message(
        'Search input',
        name: 'searchInput',
        desc: 'hint text for search field',
      );

  String get results => Intl.message('Results',
      name: 'results', desc: 'label indicating search results');

  String get edit => Intl.message(
        'Edit',
        name: 'edit',
      );

  String get addToPathway => Intl.message(
        'Add to pathway',
        name: 'addToPathway',
      );

  String get saveError => Intl.message(
        'Failed to save. Please try again.',
        name: 'saveError',
      );

  String get removeFromPathway => Intl.message(
        'Remove from pathway',
        name: 'removeFromPathway',
      );

  String get orgNotAllowMobileApp => Intl.message(
        'Your organization does not permit use of the Degreed mobile app. You can access Degreed from your phone’s web browser.',
        name: 'orgNotAllowMobileApp',
      );

  String get externalContent => Intl.message(
        'External content',
        name: 'externalContent',
      );

  String get targetLoadError => Intl.message(
        'The plan failed to load. Please try again.',
        name: 'targetLoadError',
      );

  String get pathwayDeleteSectionWarning => Intl.message(
        'If you delete this section, all lessons will be deleted. You will still see any content from this section in the pathway\'s Holds when you edit from a web browser.',
        name: 'pathwayDeleteSectionWarning',
      );

  String get deleteSection => Intl.message(
        'Delete section',
        name: 'deleteSection',
      );

  String get deletePathwayConfirmation => Intl.message(
        'Are you sure you want to delete this plan?',
        name: 'deletePathwayConfirmation',
      );

  String get deletePathway => Intl.message(
        'Delete pathway',
        name: 'deletePathway',
      );

  String get deleteTargetConfirmation => Intl.message(
        'Are you sure you want to delete this plan?',
        name: 'deleteTargetConfirmation',
      );

  String get deleteTarget => Intl.message(
        'Delete plan',
        name: 'deleteTarget',
      );

  String get removeItemFromPathwayConfirmation => Intl.message(
        'Are you sure you want to remove this from the pathway?',
        name: 'removeItemFromPathwayConfirmation',
      );

  String get removeItemFromTargetConfirmation => Intl.message(
        'Are you sure you want to remove this from the plan?',
        name: 'removeItemFromTargetConfirmation',
      );

  String get removeFromTarget => Intl.message(
        'Remove from plan',
        name: 'removeFromTarget',
      );

  String get password => Intl.message(
        'Password',
        name: 'password',
      );

  String get inputLoadError => Intl.message(
        'The content was unavailable',
        name: 'inputLoadError',
      );

  String get episodes => Intl.message(
        'Podcasts',
        name: 'episodes',
      );

  String get invalidEmailHeader => Intl.message(
        'Invalid email',
        name: 'invalidEmailHeader',
      );

  String get invalidEmailMessage => Intl.message(
        'That email appears to be invalid',
        name: 'invalidEmailMessage',
      );

  String get assessment => Intl.message(
        'Assessment',
        name: 'assessment',
      );

  String get certificate => Intl.message(
        'Certificate',
        name: 'certificate',
      );

  String get award => Intl.message(
        'Award',
        name: 'award',
      );

  String get degree => Intl.message(
        'Degree',
        name: 'degree',
      );

  String get event => Intl.message(
        'Event',
        name: 'event',
      );

  String get skill => Intl.message(
        'Skill',
        name: 'skill',
      );

  String get accomplishment => Intl.message(
        'Accomplishment',
        name: 'accomplishment',
      );

  String get changeProfilePhoto => Intl.message(
        'Change Profile Photo',
        name: 'changeProfilePhoto',
      );

  String get overdue => Intl.message(
        'Overdue',
        name: 'overdue',
      );

  String get required => Intl.message(
        'Required',
        name: 'required',
      );

  String get dueSoon => Intl.message(
        'Due soon',
        name: 'dueSoon',
      );

  String get emptyAssignmentsTitle => Intl.message(
        'No Assignments',
        name: 'emptyAssignmentsTitle',
        desc:
            'Title of the message shown when the user does not have any assignments',
      );

  String get emptyAssignmentsMessage => Intl.message(
        'Your assignments will show here',
        name: 'emptyAssignmentsMessage',
        desc: 'Message show when the user does not have any assignments',
      );

  String get loggingIn => Intl.message(
        'Logging in',
        name: 'loggingIn',
      );

  String get loggingOut => Intl.message(
        'Logging out…',
        name: 'loggingOut',
      );

  String get resettingPassword => Intl.message(
        'Resetting password',
        name: 'resettingPassword',
      );

  String get resetRequest => Intl.message(
        'Requesting password reset',
        name: 'resetRequest',
      );

  String get name => Intl.message(
        'Name',
        name: 'name',
      );

  String get description => Intl.message(
        'Description',
        name: 'description',
      );

  String get searchResults => Intl.message(
        'Search results',
        name: 'searchResults',
      );

  String get selected => Intl.message(
        'Selected',
        name: 'selected',
      );

  String get pathwayList => Intl.message(
        'Pathway list',
        name: 'pathwayList',
      );

  String get pathwaySections => Intl.message(
        'Pathway sections',
        name: 'pathwaySections',
      );

  String get pathwayLessons => Intl.message(
        'Pathway lessons',
        name: 'pathwayLessons',
      );

  String get planList => Intl.message(
        'Plan list',
        name: 'planList',
      );

  String get itemShared => Intl.message(
        'Item shared',
        name: 'itemShared',
      );

  String get addedToPathway => Intl.message(
        'Added to pathway',
        name: 'addedToPathway',
      );

  String get addedToTarget => Intl.message(
        'Added to plan',
        name: 'addedToTarget',
      );

  String get copiedUrl => Intl.message(
        'Copied URL',
        name: 'copiedUrl',
      );

  String get reset => Intl.message(
        'Reset',
        name: 'reset',
      );

  String get contentType => Intl.message(
        'Content type',
        name: 'contentType',
      );

  String get reply => Intl.message(
        'Reply',
        name: 'reply',
      );

  String get newPasswordProblem => Intl.message(
        'There was a problem logging in with your new password',
        name: 'newPasswordProblem',
      );

  String get passwordPolicy => Intl.message(
        'Passwords must be at least 8 characters long and include 1 number & 1 letter',
        name: 'passwordPolicy',
      );

  String get errorMarkingInappropriate => Intl.message(
        'There was an error marking the comment as inappropriate',
        name: 'errorMarkingInappropriate',
      );

  String get shareWithEllipsis => Intl.message(
        'Share…',
        name: 'shareWithEllipsis',
      );

  String get settings => Intl.message(
        'Settings',
        name: 'settings',
      );

  String get subsections => Intl.message(
        'Subsections',
        name: 'subsections',
      );

  String get selectPicture => Intl.message(
        'Select picture',
        name: 'selectPicture',
      );

  String get errorSendingReport => Intl.message(
        'There was an error sending the report.',
        name: 'errorSendingReport',
      );

  String get publicCommentTitle => Intl.message(
        'This comment will be public',
        name: 'publicCommentTitle',
      );

  String get publicCommentMessage => Intl.message(
        'This discussion is part of a public forum. Anything you post will be publicly viewable. Are you sure you want to post?',
        name: 'publicCommentMessage',
      );

  String get yesImSure => Intl.message(
        'Yes, I\'m sure',
        name: 'yesImSure',
      );

  String get errorGettingTakeaways => Intl.message(
        'Error getting takeaways',
        name: 'errorGettingTakeaways',
      );

  String get confirmDeleteThisAndReplies => Intl.message(
        'Are you sure you would like to delete this and its replies?',
        name: 'confirmDeleteThisAndReplies',
      );

  String get confirmDelete => Intl.message(
        'Are you sure you would like to delete this?',
        name: 'confirmDelete',
      );

  String get errorDeletingComment => Intl.message(
        'Error deleting comment',
        name: 'errorDeletingComment',
      );

  String get justNow => Intl.message(
        'Just now',
        name: 'justNow',
      );

  String get notifications => Intl.message(
        'Notifications',
        name: 'notifications',
      );

  String get noNewNotifications => Intl.message(
        'No new notifications',
        name: 'noNewNotifications',
        desc: 'Text to describe empty notification list',
      );

  String get noNewNotificationsMessage => Intl.message(
        'Your notifications will show here',
        name: 'noNewNotificationsMessage',
        desc: 'Sub text to describe empty notification list',
      );

  String get feed => Intl.message(
        'Feed',
        name: 'feed',
      );

  String get assignments => Intl.message(
        'Assignments',
        name: 'assignments',
      );

  String get shared => Intl.message(
        'Shared',
        name: 'shared',
      );

  String get discover => Intl.message(
        'Discover',
        name: 'discover',
        desc:
            'Title for the "Discover" screen wherein the user will find an overview of new and upcoming items',
      );

  String get featured => Intl.message(
        'Featured',
        name: 'featured',
        desc:
            'Title for the "Featured" screen wherein the user will find feature items',
      );

  String get learn => Intl.message(
        'Learn',
        name: 'learn',
        desc: 'Title for the Learn screen',
      );

  String get openAssignments => Intl.message(
        'Open Assignments',
        name: 'openAssignments',
        desc: 'Label for the button that opens the Assignments screen',
      );

  String assignmentCount(int count) => Intl.plural(
        count,
        one: '1 Assignment',
        other: '$count Assignments',
        name: 'assignmentCount',
        args: [count],
        desc:
            'A label displaying how many assignments the user needs to complete',
      );

  String overdueAssignmentCount(int count) => Intl.plural(
        count,
        one: '1 Overdue',
        other: '$count Overdue',
        name: 'overdueAssignmentCount',
        args: [count],
        desc:
            'A label showing how many overdue assignments the user has, omitting the word "assignments" if possible',
      );

  String get continueLearning => Intl.message(
        'Continue Learning',
        name: 'continueLearning',
        desc: 'Title for the Continue Learning section',
      );

  String get recentlyViewed => Intl.message(
        'Recently Viewed',
        name: 'recentlyViewed',
        desc: 'Title for the Recently Viewed section',
      );

  String get trending => Intl.message(
        'Trending',
        name: 'trending',
        desc: 'Title for the trending section in Degreed',
      );

  String get todayfeed => Intl.message(
        'Today Feed',
        name: 'todayfeed',
        desc: 'Title for the today feed section in Degreed',
      );

  String get menu => Intl.message(
        'Menu',
        name: 'menu',
        desc: 'Title for the application menu screen',
      );

  String get home => Intl.message(
        'Home',
        name: 'home',
        desc: 'Title for the Home screen',
      );

  String get learning => Intl.message(
        'Learning',
        name: 'learning',
        desc: 'Title for learning in collection screen',
      );

  String get plans => Intl.message(
        'Plans',
        name: 'plans',
      );

  String get podcasts => Intl.message(
        'Podcasts',
        name: 'podcasts',
      );

  String get collection => Intl.message(
        'Collection',
        name: 'collection',
      );

  String get skillsFocus => Intl.message('Focus Skills',
      name: 'skillsFocus',
      desc: 'This text helps describe title of skills tab');

  String get follower => Intl.message(
        'Follower',
        name: 'follower',
      );

  String get firstName => Intl.message(
        'First name',
        name: 'firstName',
      );

  String get lastName => Intl.message(
        'Last name',
        name: 'lastName',
      );

  String get bio => Intl.message(
        'Bio',
        name: 'bio',
      );

  String get filter => Intl.message(
        'Filter',
        name: 'filter',
      );

  String get whatDoYouWantToLearn => Intl.message(
        'What do you want to learn?',
        name: 'whatDoYouWantToLearn',
      );

  String get skills => Intl.message(
        'Skills',
        name: 'skills',
      );

  String get noSkills => Intl.message(
        'No Skills',
        name: 'noSkills',
      );

  String get noSkillsDescription => Intl.message(
        'No skills have been added to this course',
        name: 'noSkillsDescription',
      );

  String get noComments => Intl.message(
        'No Comments',
        name: 'noComments',
      );

  String get noCommentsDescription => Intl.message(
        'Be the first to add a comment',
        name: 'noCommentsDescription',
      );

  String get commentHintText => Intl.message(
        'Write a comment...',
        name: 'commentHintText',
      );

  String get comment => Intl.message(
        'Comment',
        name: 'comment',
      );

  String get content => Intl.message(
        'Content',
        name: 'content',
      );

  String itemsCount(int itemCount) => Intl.plural(
        itemCount,
        one: '$itemCount item',
        other: '$itemCount items',
        name: 'itemsCount',
        args: [itemCount],
      );

  String sectionsCount(int sectionCount) => Intl.plural(
        sectionCount,
        one: '$sectionCount section',
        other: '$sectionCount sections',
        name: 'sectionsCount',
        args: [sectionCount],
      );

  String subsectionsCount(int subsectionCount) => Intl.plural(
        subsectionCount,
        one: '$subsectionCount Subsection',
        other: '$subsectionCount Subsections',
        name: 'subsectionsCount',
        args: [subsectionCount],
      );

  String countItemsCompleted(int completedCount, int itemCount) => Intl.plural(
        itemCount,
        one: '$completedCount/$itemCount item completed',
        other: '$completedCount/$itemCount items completed',
        name: 'countItemsCompleted',
        args: [completedCount, itemCount],
      );

  String pathwayPercentCompleted(int percentComplete) => Intl.message(
        '${percentComplete}% COMPLETED',
        name: 'pathwayPercentCompleted',
        args: [percentComplete],
        examples: const {
          'percentComplete': 12,
        },
        desc:
            'Small badge text displayed on Pathway cards to show what percentage has been completed by the user',
      );

  String get yourAssignments => Intl.message(
        'Your assignments',
        name: 'yourAssignments',
      );

  String get assignmentsSubtitle => Intl.message(
        'Some assignments come from an external source and completions will be verified with their external source. Other assignments will show if they have been shared and assigned to you directly or to a group you are in.',
        name: 'assignmentsSubtitle',
        desc: 'Subtitle of the assignments screen',
      );

  String get collectionSubtitle => Intl.message(
        'Here, you can find all your learning, experience, achievements, pathways and plans.',
        name: 'collectionSubtitle',
        desc: 'Subtitle of the collection screen',
      );

  String get skillsSubtitle => Intl.message(
        'Skills within this section will be highlighted on your learner home. You can add up to 4 skills',
        name: 'skillsSubtitle',
        desc: 'Subtitle of the skills tab',
      );

  String get todo => Intl.message(
        'To Do',
        name: 'todo',
        desc: 'Label for assignments that are not completed',
      );

  String get additionalLearning => Intl.message(
        'Additional learning',
        name: 'additionalLearning',
      );

  String get additionalLearningDescription => Intl.message(
        'Doesn\'t count against pathway progress',
        name: 'additionalLearningDescription',
      );

  String lessonNumberTitle(int lessonNumber) => Intl.message(
        'Lesson $lessonNumber',
        name: 'lessonNumberTitle',
        args: [lessonNumber],
      );

  String sectionNumberTitle(int sectionNumber) => Intl.message(
        'Section $sectionNumber',
        name: 'sectionNumberTitle',
        args: [sectionNumber],
      );

  String get title => Intl.message(
        'Title',
        name: 'title',
      );

  String get nothingHere => Intl.message(
        'Nothing here',
        name: 'nothingHere',
      );

  String author(String authorName) => Intl.message(
        'By $authorName',
        name: 'author',
        args: [authorName],
      );

  String get pathwayVisibilityOrgAuthorsOnly => Intl.message(
        'Collaborator profiles (private)',
        name: 'pathwayVisibilityOrgAuthorsOnly',
      );

  String get pathwayVisibilityOrgProfilesOnly => Intl.message(
        'Collaborator profiles (public)',
        name: 'pathwayVisibilityOrgProfilesOnly',
      );

  String get pathwayVisibilityOrgGroupsOnly => Intl.message(
        'Visible to specific groups',
        name: 'pathwayVisibilityOrgGroupsOnly',
      );

  String get pathwayVisibilityEntireOrg => Intl.message(
        'Visible to organization',
        name: 'pathwayVisibilityEntireOrg',
      );

  String get pathwayVisibilityPrivate => Intl.message(
        'Private',
        name: 'pathwayVisibilityPrivate',
      );

  String get pathwayVisibilityPublic => Intl.message(
        'Public',
        name: 'pathwayVisibilityPublic',
      );

  String get youAreAnActiveLearner => Intl.message(
        'You are an Active Learner',
        name: 'youAreAnActiveLearner',
      );

  String get youHaveSharedActiveLearner => Intl.message(
        '• You have shared at least 1 item',
        name: 'youHaveSharedActiveLearner',
      );

  String get youHaveCompletedActiveLearner => Intl.message(
        '• You have completed at least 5 items',
        name: 'youHaveCompletedActiveLearner',
      );

  String get youHaveAddedSkillsActiveLearner => Intl.message(
        '• You have added at least 3 skills to your profile',
        name: 'youHaveAddedSkillsActiveLearner',
      );

  String get monthlyActiveLearner => Intl.message(
        '• You are active every month',
        name: 'monthlyActiveLearner',
      );

  String activeLearnerDescription(String activeLearnerStatus) => Intl.message(
        'If you don’t use Degreed at least once every 30 days, you’ll lose your $activeLearnerStatus. But don’t worry, as soon as you are active again, you’ll gain it back.',
        name: 'activeLearnerDescription',
        args: [activeLearnerStatus],
        examples: const {
          'activeLearnerStatus': 'Active Learner Status',
        },
      );

  String otherIsAnActiveLearner(String firstName) => Intl.message(
        '$firstName is an Active Learner',
        name: 'otherIsAnActiveLearner',
        args: [firstName],
      );

  String otherHasSharedActiveLearner(String firstName) => Intl.message(
        '• $firstName has shared at least 1 item',
        name: 'otherHasSharedActiveLearner',
        args: [firstName],
        desc:
            '(Referring to another user) An item in a list of criteria that qualifies a user as an Active Learner',
      );

  String otherHasCompletedActiveLearner(String firstName) => Intl.message(
        '• $firstName has completed at least 5 items',
        name: 'otherHasCompletedActiveLearner',
        args: [firstName],
        desc:
            '(Referring to another user) An item in a list of criteria that qualifies a user as an Active Learner',
      );

  String otherHasAddedSkillsActiveLearner(String firstName) => Intl.message(
        '• $firstName has added at least 3 skills to their profile',
        name: 'otherHasAddedSkillsActiveLearner',
        args: [firstName],
        desc:
            '(Referring to another user) An item in a list of criteria that qualifies a user as an Active Learner',
      );

  String otherMonthlyActiveLearner(String firstName) => Intl.message(
        '• $firstName has been active every month',
        name: 'otherMonthlyActiveLearner',
        args: [firstName],
        desc:
            '(Referring to another user) An item in a list of criteria that qualifies a user as an Active Learner',
      );

  String otherActiveLearnerDescription(
          String firstName, String activeLearnerStatus) =>
      Intl.message(
        'If $firstName doesn\'t use Degreed at least once every 30 days, they\'ll lose their $activeLearnerStatus',
        name: 'otherActiveLearnerDescription',
        args: [firstName, activeLearnerStatus],
        examples: const {
          'firstName': 'Katy',
          'activeLearnerStatus': 'Active Learner Status',
        },
      );

  String get activeLearnerStatus => Intl.message(
        'Active Learner Status',
        name: 'activeLearnerStatus',
        desc:
            'Text used in the strings activeLearnerFullDescription and otherActiveLearnerFullDescription, translated separately because it will be presented with a different text style',
      );

  String get copyUrl => Intl.message(
        'You can add an article or video by copying a url',
        name: 'copyUrl',
      );

  String get privateProfile => Intl.message(
        'Private profile',
        name: 'privateProfile',
      );

  String get directories => Intl.message(
        'Directories',
        name: 'directories',
      );

  String get targetNotFoundTitle => Intl.message(
        'That plan could not be loaded',
        name: 'targetNotFoundTitle',
      );

  String get pathwayNotFoundTitle => Intl.message(
        'That pathway could not be loaded',
        name: 'pathwayNotFoundTitle',
      );

  String get notFoundMessage => Intl.message(
        'Please verify that the URL is correct and you have permission to access it',
        name: 'notFoundMessage',
      );

  String get activeLearner => Intl.message(
        'Active Learner',
        name: 'activeLearner',
      );

  String get moreOptions => Intl.message(
        'More options',
        name: 'moreOptions',
      );

  String get takeaways => Intl.message(
        'Takeaways',
        name: 'takeaways',
      );

  String get clearSearch => Intl.message(
        'Clear search',
        name: 'clearSearch',
      );

  String get filterResults => Intl.message(
        'Filter results',
        name: 'filterResults',
      );

  String get profileIsPrivate => Intl.message(
        'This user\'s profile is private',
        name: 'profileIsPrivate',
      );

  String get addToDegreed => Intl.message(
        'Add to Degreed',
        name: 'addToDegreed',
      );

  String get profile => Intl.message(
        'Profile',
        name: 'profile',
      );

  String matchingSkillsNumber(int count, int total) => Intl.plural(
        total,
        one: '$count of $total skill',
        other: '$count of $total skills',
        name: 'matchingSkillsNumber',
        args: [count, total],
      );

  String opportunityTypeLocation(String type, String location) => Intl.message(
        '$type • $location',
        name: 'opportunityTypeLocation',
        skip: true,
        args: [type, location],
      );

  String get opportunities => Intl.message(
        'Opportunities',
        name: 'opportunities',
      );

  String get shareArticleVideoOrIdea => Intl.message(
        'Share an article, video, or idea',
        name: 'shareArticleVideoOrIdea',
      );

  String get leaveGroup => Intl.message(
        'Leave group',
        name: 'leaveGroup',
      );

  String get share => Intl.message(
        'Share',
        name: 'share',
      );

  String get enterPhone => Intl.message(
        'Use phone number or email to use Somi mobile app',
        name: 'enterPhone',
      );

  String get userNameHint => Intl.message(
        'User name or email address',
        name: 'userNameHint',
      );

  String get emailHint => Intl.message(
        'Email address',
        name: 'emailHint',
      );

  String get enterEmailPasswordReset => Intl.message(
        'Enter your primary email address to have a password reset email sent to you',
        name: 'enterEmailPasswordReset',
      );

  String get forgetYourPassword => Intl.message(
        'Forget your password?',
        name: 'forgetYourPassword',
      );

  String get login => Intl.message(
        'Log in',
        name: 'login',
      );

  String get resetYourPassword => Intl.message(
        'Reset your password',
        name: 'resetYourPassword',
      );

  String get manageSkills => Intl.message(
        'Manage skills',
        name: 'manageSkills',
      );

  String get knowledgeCenter => Intl.message(
        'Knowledge Center',
        name: 'knowledgeCenter',
      );

  String get allowPushNotifications => Intl.message(
        'Allow push notifications',
        name: 'allowPushNotifications',
      );

  String get itemsSharedWithMe => Intl.message(
        'Items shared with me',
        name: 'itemsSharedWithMe',
      );

  String get itemsAssignedToMe => Intl.message(
        'Items assigned to me',
        name: 'itemsAssignedToMe',
      );

  String get itemsSharedToAGroupIAmAMemberOf => Intl.message(
        'Items shared to a group I am a member of',
        name: 'itemsSharedToAGroupIAmAMemberOf',
      );

  String get mentionedInAComment => Intl.message(
        'Mentioned in a comment',
        name: 'mentionedInAComment',
      );

  String get invitedToAGroup => Intl.message(
        'Invited to a group',
        name: 'invitedToAGroup',
      );

  String get manageNotifications => Intl.message(
        'Manage notifications',
        name: 'manageNotifications',
      );

  String get add => Intl.message(
        'Add',
        name: 'add',
        desc:
            'Button for a user to add a skill or content item to their profile',
      );

  String get added => Intl.message(
        'Added',
        name: 'added',
        desc:
            'Button indicating that a skill or content item was added to the user profile',
      );

  String focusSkillsCount(int count, int total) => Intl.message(
        '$count of $total Focus Skills',
        name: 'focusSkillsCount',
        args: [count, total],
      );

  String get focusSkills => Intl.message(
        'Focus skills',
        name: 'focusSkills',
      );

  String get additionalSkills => Intl.message(
        'Additional Skills',
        name: 'additionalSkills',
      );

  String get addUpToFour => Intl.message(
        'You can add up to 4 skills',
        name: 'addUpToFour',
      );

  String get removeFocusSkill => Intl.message(
        'Please remove a Focus Skill in order to add a new one',
        name: 'removeFocusSkill',
      );

  String get remove => Intl.message(
        'Remove',
        name: 'remove',
      );

  String levelNumber(int level) => Intl.message(
        'Level $level',
        name: 'levelNumber',
        args: [level],
      );

  String get selfRating => Intl.message(
        'Self Rating',
        name: 'selfRating',
      );

  String get skillRatingStatusSelf => Intl.message(
        'Self',
        name: 'skillRatingStatusSelf',
        desc: 'A shortened version of "Self Rating" displayed on skill cards',
      );

  String get skillRatingStatusManager => Intl.message(
        'Manager',
        name: 'skillRatingStatusManager',
        desc:
            'A shortened version of "Manager Rating" displayed on skill cards',
      );

  String get skillRatingStatusInProgress => Intl.message(
        'In Progress',
        name: 'skillRatingStatusInProgress',
        desc:
            'A shortened version of "Rating In Progress" displayed on skill cards',
      );

  String get skillRatingStatusCertified => Intl.message(
        'Certified',
        name: 'skillRatingStatusCertified',
        desc:
            'A shortened version of "Skill Credential is Certified" displayed on skill cards',
      );

  String get peerRating => Intl.message(
        'Peer Rating',
        name: 'peerRating',
      );

  String get managerRating => Intl.message(
        'Manager Rating',
        name: 'managerRating',
      );

  String get skillReview => Intl.message(
        'Skill Review',
        name: 'skillReview',
      );

  String get skillCertification => Intl.message(
        'Skill Certification',
        name: 'skillCertification',
      );

  String get youHaveARatingInProgress => Intl.message(
        'You have a rating in progress',
        name: 'youHaveARatingInProgress',
      );

  String get addSkillRating => Intl.message(
        'Add skill rating',
        name: 'addSkillRating',
      );

  String get close => Intl.message(
        'Close',
        name: 'close',
      );

  String get confirm => Intl.message(
        'Confirm',
        name: 'confirm',
      );

  String get selectARating => Intl.message(
        'Select a rating that best describes your proficiency in the skill',
        name: 'selectARating',
      );

  String get beginner => Intl.message(
        'Beginner',
        name: 'beginner',
      );

  String get expert => Intl.message(
        'Expert',
        name: 'expert',
      );

  String get updateSkillRating => Intl.message(
        'Update skill rating',
        name: 'updateSkillRating',
      );

  String get update => Intl.message(
        'Update',
        name: 'update',
      );

  String get clearRating => Intl.message(
        'Clear rating',
        name: 'clearRating',
      );

  String andCountOthers(int count) => Intl.plural(
        count,
        one: '+ $count other',
        other: '+ $count others',
        name: 'andCountOthers',
        args: [count],
      );

  String get pressBackToExit => Intl.message(
        'Press back again to exit',
        name: 'pressBackToExit',
      );

  String get addToFocusSkills => Intl.message(
        'Add to Focus Skills',
        name: 'addToFocusSkills',
      );

  String get removeFromFocusSkills => Intl.message(
        'Remove from Focus Skills',
        name: 'removeFromFocusSkills',
      );

  String get profileSettings => Intl.message(
        'Profile Settings',
        name: 'profileSettings',
        desc: 'Title for the profile settings screen',
      );

  String get unsavedProfileDialogTitle => Intl.message(
        'Unsaved changes',
        name: 'unsavedProfileDialogTitle',
      );

  String get unsavedProfileDialogMessage => Intl.message(
        'Would you like to discard changes made to your profile?',
        name: 'unsavedProfileDialogMessage',
      );

  String get discard => Intl.message(
        'Discard',
        name: 'discard',
      );

  String get cropImageTitle => Intl.message(
        'Crop your image',
        name: 'cropImageTitle',
        desc:
            'Title for the image-cropper screen where users can adjust and crop their profile image before uploading',
      );

  String get cropImageMessage => Intl.message(
        'Adjust the image by pinching to zoom or dragging to pan. Use the arrow buttons on either side to rotate the image.',
        name: 'cropImageMessage',
        desc:
            'Instructions displayed on the image-cropper screen where users can adjust and crop their profile image before uploading',
      );

  String get rotateLeft => Intl.message(
        'Rotate left',
        name: 'rotateLeft',
        desc:
            'Label for the button that rotates the image left (counterclockwise) on the image-cropper screen',
      );

  String get rotateRight => Intl.message(
        'Rotate right',
        name: 'rotateRight',
        desc:
            'Label for the button that rotates the image right (clockwise) on the image-cropper screen',
      );

  String appVersion(String appVersion) => Intl.message(
        'Version $appVersion',
        name: 'appVersion',
        args: [appVersion],
      );

  String get dataPrivacyPolicy => Intl.message(
        'Data Privacy Policy',
        name: 'dataPrivacyPolicy',
        desc: 'Title for the Data Privacy Policy acceptance screen',
      );

  String get cancel => Intl.message(
        'Cancel',
        name: 'cancel',
        desc: 'Represents a universal "cancel" action',
      );

  String get acceptAndContinue => Intl.message(
        'Accept & Continue',
        name: 'acceptAndContinue',
        desc:
            'Label for the button to accept the Data Privacy Policy and continue on to the next screen',
      );

  String get dpaHeader => Intl.message(
        'Please review and accept the following policy to use Degreed',
        name: 'dpaHeader',
        desc: 'Header text that precedes the Data Privacy message',
      );

  String get areYouSure => Intl.message(
        'Are you sure?',
        name: 'areYouSure',
        desc:
            'A confirmation message asking if the user wishes to perform a given action',
      );

  String get youWillBeLoggedOut => Intl.message(
        'You will be logged out of the Degreed app.',
        name: 'youWillBeLoggedOut',
      );

  String get yesLogOut => Intl.message(
        'Yes, log out',
        name: 'yesLogOut',
        desc:
            'Label for the button confirming that the user wishes to log out of the app',
      );

  String get resetOnboarding => Intl.message(
        'Reset Onboarding',
        name: 'resetOnboarding',
        desc:
            'Label for the action to reset the user onboarding process - for choosing skills and a job role',
      );

  String get resetOnboardingConfirmationMessage => Intl.message(
        'Are you sure you want to reset onboarding?',
        name: 'resetOnboardingConfirmationMessage',
      );

  String get onboardingWelcomeTitle => Intl.message(
        'Degreed empowers you to improve your existing Skills while discovering new ones.',
        name: 'onboardingWelcomeTitle',
      );

  String get onboardingWelcomeSubtitle => Intl.message(
        'Build your profile for personalized suggestions relevant to your job role, unique Skills, and career goals.',
        name: 'onboardingWelcomeSubtitle',
      );

  String get onboardingSkip => Intl.message(
        'Skip Tour',
        name: 'onboardingSkip',
        desc: 'Button label for skipping the onboarding tour',
      );

  String get onboardingCreating => Intl.message(
        'Creating your Degreed experience',
        name: 'onboardingCreating',
        desc:
            'Message displayed while the user skill profile is created at the end of the onboarding tour',
      );

  String get onboardingRoleTitle => Intl.message(
        'Select your Current Job Role',
        name: 'onboardingRoleTitle',
        desc:
            'Title for the onboarding screen where users select their job role',
      );

  String get onboardingRoleSubtitle => Intl.message(
        'The job role you have now is the foundation of your Degreed profile, and helps us to quickly and efficiently build your personalized Degreed journey.',
        name: 'onboardingRoleSubtitle',
        desc:
            'Subtitle for the onboarding screen where users select their job role',
      );

  String get onboardingRoleSearchHint => Intl.message(
        'Search for a Job Role',
        name: 'onboardingRoleSearchHint',
        desc: 'Hint/placeholder text for the job role search box',
      );

  String get onboardingSkillsTitle => Intl.message(
        'Relevant Skills',
        name: 'onboardingSkillsTitle',
        desc:
            'Title for the screen where users select Skills that are relevant to their job role',
      );

  String onboardingSkillsSubtitle(
          String jobRoleName, String organizationName) =>
      Intl.message(
        'Based on your $jobRoleName job role, $organizationName recommends you add these relevant Skills to your Degreed profile',
        name: 'onboardingSkillsSubtitle',
        args: [jobRoleName, organizationName],
        examples: const {
          'jobRoleName': 'Accountant',
          'organizationName': 'BusinessCorp',
        },
        desc:
            'Subtitle for the screen where users select Skills that are relevant to their job role',
      );

  String get onboardingStartLearning => Intl.message(
        'Start Learning',
        name: 'onboardingStartLearning',
        desc: 'Label for the button that completes the onboarding process',
      );

  String get onboardingSkillSelectRecommendation => Intl.message(
        'We recommend keeping your assigned skills selected. The selected skills provide you with role-based learning and resources.',
        name: 'onboardingSkillSelectRecommendation',
      );

  String get onboardingSelectASkill => Intl.message(
        'Select at least one skill to proceed',
        name: 'onboardingSelectASkill',
        desc:
            'Warning message displayed when the user has not selected any skills and will be unable to proceed to the next onboarding step',
      );

  String get searchSkills => Intl.message(
        'Search Skills',
        name: 'searchSkills',
        desc: 'Search box hint displayed when searching for skills by name',
      );

  String noSkillsMatching(String query) => Intl.message(
        'No Skills matching "$query"',
        name: 'noSkillsMatching',
        args: [query],
        examples: const {
          'query': 'Product Design',
        },
        desc:
            'Message displayed when searching for skills and there are no results matching the user\'s query',
      );

  String onboardingNoRolesMatching(String query) => Intl.message(
        'No roles matching "$query"',
        name: 'onboardingNoRolesMatching',
        args: [query],
        examples: const {
          'query': 'Product Designer',
        },
        desc:
            'Message displayed when the user searches for a job role but there are no matching results',
      );

  String get emptySkillsTitle => Intl.message(
        'No Skills Added',
        name: 'emptySkillsTitle',
        desc:
            'Title for the screen displayed when the user has not added any skills',
      );

  String get emptySkillsMessage => Intl.message(
        'Add Skills to your profile to get personalized learning recommendations.',
        name: 'emptySkillsMessage',
        desc:
            'Message for the screen displayed when the user has not added any skills',
      );

  String get oops => Intl.message(
        'Oops!',
        name: 'oops',
        desc:
            'Exclamatory displayed on the Crash Screen when something goes wrong',
      );

  String get crashScreenTitle => Intl.message(
        'Something Went Wrong',
        name: 'crashScreenTitle',
        desc:
            'Title of crash screen the displayed when a crash occurs in the app',
      );

  String get crashScreenMessage => Intl.message(
        'Contact Support to get help with the app, or send an error report directly to our developers.',
        name: 'crashScreenMessage',
        desc: 'Message shown on the crash screen',
      );

  String get crashScreenInfoLabel => Intl.message(
        'What information will be sent?',
        name: 'crashScreenInfoLabel',
        desc:
            'Label for the info button on the crash screen regarding what information is sent in the error report',
      );

  String get contactSupport => Intl.message(
        'Contact Support',
        name: 'contactSupport',
        desc: 'Label for the button allowing users to contact support',
      );

  String get sendReport => Intl.message(
        'Send Report',
        name: 'sendReport',
        desc:
            'Label for the button allowing users to send an error report to the developers',
      );

  String get restartApp => Intl.message(
        'Restart App',
        name: 'restartApp',
        desc: 'Label for the button allowing users to restart the application',
      );

  String get crashDataCollectionMessage => Intl.message(
        '''### **Information Collected for Error Reporting**

When you opt to send an error report, we gather data to assist in diagnosing and rectifying potential issues in the application. Please be assured, your privacy is paramount to us, and no personal or identifiable information will be collected or sent. Below is a summary of the data collected:

- **Application Details**: Insights about the app's state at the time of the error. This may include which screen you were on, the actions leading up to the error, and other non-sensitive operational insights.
- **Device Information**: General specifications of your device, such as its brand, model, operating system version, and configuration. This data aids in identifying if particular issues are associated with specific device types.
- **Error Information**: Comprehensive technical data about the error, like the stack trace. This offers a clear understanding of the specific issue within the app's code.
- **Network Information**: Essential details regarding your network connection, aiming to identify if issues might be associated with connectivity.
- **Memory Usage**: Data about memory utilization at the time of the error, to determine if the error might be related to resource constraints.
- **Performance Metrics**: Metrics related to the app's performance, including aspects like speed and responsiveness, to discern if the error was a result of a performance issue.

Your feedback greatly assists in enhancing the application experience for all users. Should you have any privacy or data-related concerns, please don't hesitate to contact our support team.
''',
        name: 'crashDataCollectionMessage',
        desc:
            'A markdown-formatted message detailing the type of data that is sent in error reports. Markdown syntax like ** and ### must be preserved.',
      );

  String userAddedGroup(String user, String group) => Intl.message(
        '$user added the group $group',
        name: 'userAddedGroup',
        args: [user, group],
        examples: const {
          'user': 'John Doe',
          'group': 'Book Club',
        },
        desc: 'Message shown when the user adds a new group',
      );

  String get crashReportCollected => Intl.message(
        'Thank you! Your report has been collected.',
        name: 'crashReportCollected',
        desc: 'A message displayed when the user opts to send a crash report',
      );

  String get lastUpdated => Intl.message(
        'Last updated',
        name: 'lastUpdated',
        desc: 'Label that describes when plan was last updated by author',
      );

  String get targetAudience => Intl.message(
        'Target Audience',
        name: 'targetAudience',
        desc: 'Label for Target audience for Plan that is published.',
      );

  String countGroups(int count) => Intl.plural(
        count,
        one: '$count Groups',
        other: '$count Groups',
        name: 'countGroups',
        args: [count],
        examples: const {
          'count': '100',
        },
        desc: 'Used for displaying a user\'s group count',
      );

  String get overview => Intl.message(
        'Overview',
        name: 'overview',
        desc: 'Label that describes profile card in profil tabs screen',
      );

  String get mixedResources => Intl.message(
        'Mixed Resources',
        name: 'mixedResources',
        desc: 'Title for mixed Resources that are added in Plan',
      );

  String get type => Intl.message('Type', name: 'type', desc: 'Title for Type');

  String get open => Intl.message(
        'Open',
        name: 'open',
        desc: 'Label that opens the learning content',
      );

  String get comments => Intl.message(
        'Comments',
        name: 'comments',
        desc: 'Label that shows comments section',
      );

  String get provider => Intl.message(
        'Provider',
        name: 'provider',
        desc: 'Label that shows Provider title',
      );
  String get selectCountry =>
      Intl.message('Select Country', name: 'selectCountry');
}
