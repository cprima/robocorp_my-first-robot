*** Settings ***
Documentation     Orders robots from RobotSpareBin Industries Inc.
...               Saves the order HTML receipt as a PDF file.
...               Saves the screenshot of the ordered robot.
...               Embeds the screenshot of the robot to the PDF receipt.
...               Creates ZIP archive of the receipts and the images.

*** Variables ***

*** Tasks ***
Order robots from RobotSpareBin Industries Inc
    Open the robot order website
    ${orders}=    Get orders
    Log    ${orders}
    FOR    ${row}    IN    @{orders}
        Close the annoying modal
        Fill the form    ${row}
        Preview the robot
        Submit the order
        ${pdf}=    Store the receipt as a PDF file    ${row}[Order number]
        ${screenshot}=    Take a screenshot of the robot    ${row}[Order number]
        Embed the robot screenshot to the receipt PDF file    ${screenshot}    ${pdf}
        Go to order another robot
    END
    Create a ZIP file of the receipts

*** Keywords ***
Open the robot order website
    No Operation

Get orders
    #No Operation
    &{row1}=    Create Dictionary    Order number=1    Head=1    Body=2    Legs=3    Address=Adress\ 123
    &{row2}=    Create Dictionary    Order number=2    Head=4    Body=1    Legs=5    Address=Adress\ 456
    @{LIST}=    Create List    ${row1}    ${row2}
    Log    ${LIST}
    [Return]    ${LIST}

Close the annoying modal
    No Operation

Fill the form
    [Arguments]    ${row}
    Log    ${row}[Head]
    No Operation

Preview the robot
    No Operation

Submit the order
    No Operation

Store the receipt as a PDF file
    [Arguments]    ${order_number}
    No Operation

Take a screenshot of the robot
    [Arguments]    ${order_number}
    No Operation

Embed the robot screenshot to the receipt PDF file
    [Arguments]    ${screenshot}    ${pdf}
    No Operation

Go to order another robot
    No Operation

Create a ZIP file of the receipts
    No Operation
