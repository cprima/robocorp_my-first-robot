*** Settings ***
Documentation     Orders robots from RobotSpareBin Industries Inc.
...               Saves the order HTML receipt as a PDF file.
...               Saves the screenshot of the ordered robot.
...               Embeds the screenshot of the robot to the PDF receipt.
...               Creates ZIP archive of the receipts and the images.
Library           RPA.Robocorp.Vault
Library           RPA.Dialogs
Library           RPA.HTTP
Library           RPA.Tables
Library           RPA.Browser.Selenium    auto_close=${FALSE}

*** Variables ***

*** Tasks ***
Order robots from RobotSpareBin Industries Inc
    ${secret}=    Get Secret    credentials
    Log    ${secret}[username]
    Open the robot order website
    ${orders}=    Get orders
    Log    ${orders}
    Close the annoying modal
    FOR    ${row}    IN    @{orders}
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
    Open Available Browser    https://robotsparebinindustries.com/#/robot-order
    No Operation

Get orders
    #No Operation
    Download    https://robotsparebinindustries.com/orders.csv    overwrite=True
    ${orders}=    Read table from CSV    orders.csv
    Log    Found columns: ${orders.columns}
    [Return]    ${orders}

Close the annoying modal
    Click Button    Yep

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
    Confirmation dialog
    No Operation

Confirmation dialog
    Add icon    Warning
    Add heading    Delete existing file?
    Add submit buttons    buttons=No,Yes    default=Yes
    ${result}=    Run dialog
    IF    $result.submit == "Yes"
        Log    Yes
    END
