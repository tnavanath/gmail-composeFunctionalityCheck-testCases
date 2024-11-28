Feature: Testing of compose function in Gmail, to send an email

    Scenario: Verify the Compose button opens a new email window
        Given the user is logged into Gmail
        When the user clicks on the Compose button
        Then a new email compose window should open

    Scenario: Validate valid email address acceptance in the To field
        Given the user has opened the compose window
        When the user enters a valid email address in the To field
        Then the email address should be accepted without any error

    Scenario: Validate rejection of an invalid email address in the To field
        Given the user has opened the compose window
        When the user enters an invalid email address in the To field
        Then the system should display an error message stating Invalid email address

    Scenario: Validate email is send successfully when you add valid email address, subject and body content
        Given the user has opened the compose window
        When the user enters an invalid email address in the To field
        And the user enters subject as Incubyte and body content as QA test for Incubyte
        Then email should be sent successfully

    Scenario: Verify formatting options in the email body

        Given the user has opened the compose window
        When the user types text in the email body
        And applies formatting such as bold, italic, and underline
        Then the text should display with the selected formatting

    Scenario: Validate attachment functionality
        Given the user has opened the compose window
        When the user attaches a valid file
        Then the file should be uploaded and visible in the compose window

    Scenario: Reject blocked file types as attachments
        Given the user has opened the compose window
        When the user attempts to attach a blocked file type
        Then the system should display an error message stating This file type is not allowed

    Scenario: Restrict attachment of oversized files
        Given the user has opened the compose window
        When the user tries to attach a file larger than 25MB
        Then the system should display an error message stating Attachment exceeds the maximum file size

    Scenario: Verify draft auto-save functionality
        Given the user has opened the compose window
        And entered content in the email fields
        When the user closes the compose window without saving
        Then the draft should be automatically saved in the Drafts folder

    Scenario: Validate Discard Draft functionality for saved draft
        Given the user has an email draft saved
        When the user selects the draft and clicks on Discard Draft
        And confirms the action
        Then the draft should be permanently removed

    Scenario: Check inline image insertion in email body
        Given the user has opened the compose window
        When the user inserts an image into the email body
        Then the image should appear inline within the email content

    Scenario: Verify the appearance of CC and BCC fields
        Given the user has opened the compose window
        When the user clicks on the CC or BCC option
        Then the corresponding fields should be displayed below the To field

    Scenario: Ensure text retains formatting when pasted
        Given the user has copied formatted text from another source
        When the user pastes the text into the email body
        Then the text should retain its original formatting

    Scenario: Validate Discard Draft functionality for unsaved email
        Given the user has opened the compose window
        And entered content in the email fields
        When the user clicks Discard Draft button
        Then the compose window should close, and all content should be discarded

