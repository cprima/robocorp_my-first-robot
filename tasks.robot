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
Library           RPA.PDF
Library           RPA.Archive
Library           RPA.FileSystem

*** Variables ***
&{ASSETS}

*** Tasks ***
Order robots from RobotSpareBin Industries Inc
    ${ASSETS}=    Get Secret    assets
    myInit
    Open the robot order website    ${ASSETS}[target_url]
    ${orders}=    Get orders    ${ASSETS}[orderfile_url]
    Log    ${orders}
    FOR    ${row}    IN    @{orders}
        Close the annoying modal
        Fill the form    ${row}
        Wait Until Keyword Succeeds    30s    1s    Preview the robot
        Wait Until Keyword Succeeds    30s    1s    Submit the order
        ${pdf}=    Store the receipt as a PDF file    ${row}[Order number]
        ${screenshot}=    Take a screenshot of the robot    ${row}[Order number]
        Embed the robot screenshot to the receipt PDF file    ${screenshot}    ${pdf}
        Go to order another robot
    END
    [Teardown]    myTeardown

*** Keywords ***
myInit
    ${dir_exists}=    Does Directory Exist    ${OUTPUT_DIR}${/}orders
    IF    ${dir_exists}
        Remove Directory    ${OUTPUT_DIR}${/}orders    recursive=True
    END
    ${dir_exists}=    Does Directory Exist    ${OUTPUT_DIR}${/}previews
    IF    ${dir_exists}
        Remove Directory    ${OUTPUT_DIR}${/}previews    recursive=True
    END
    ${file_exists}=    Does File Exist    ${OUTPUT_DIR}${/}orders.zip
    IF    ${file_exists}
        Remove File    ${OUTPUT_DIR}${/}orders.zip
    END
    Create Directory    ${OUTPUT_DIR}${/}orders    exist_ok=True
    Create Directory    ${OUTPUT_DIR}${/}previews    exist_ok=True

Open the robot order website
    [Arguments]    ${url}
    Open Available Browser    ${url}
    No Operation

Get orders
    [Arguments]    ${url}
    Download    ${url}    overwrite=True
    ${orders}=    Read table from CSV    orders.csv
    Log    Found columns: ${orders.columns}
    [Return]    ${orders}

Close the annoying modal
    Click Button    Yep
    No Operation

Fill the form
    [Arguments]    ${row}
    Wait Until Element Is Visible    id:head
    Select From List By Value    id:head    ${row}[Head]
    Click Element    xpath=//*[@id="id-body-${row}[Body]"]
    Input Text    xpath=//input[@placeholder="Enter the part number for the legs"]    ${row}[Legs]
    Input Text    css:#address    ${row}[Address]

Preview the robot
    Click Element    id:preview
    Wait Until Element Is Visible    id:preview    2s

Submit the order
    Click Element    id:order
    Wait Until Element Is Visible    id:order-completion    2s

Store the receipt as a PDF file
    [Arguments]    ${order_number}
    ${order_completion_html}=    Get Element Attribute    id:order-completion    innerHTML
    Html To Pdf    ${order_completion_html}    ${OUTPUT_DIR}${/}orders${/}order_${order_number}.pdf
    No Operation

Take a screenshot of the robot
    [Arguments]    ${order_number}
    Screenshot    id:robot-preview-image    ${OUTPUT_DIR}${/}previews${/}robot_preview_${order_number}.png
    Open Pdf    ${OUTPUT_DIR}${/}orders${/}order_${order_number}.pdf
    ${files}=    Create List    ${OUTPUT_DIR}${/}previews${/}robot_preview_${order_number}.png
    Add Files To Pdf    ${files}    ${OUTPUT_DIR}${/}orders${/}order_${order_number}.pdf    append=True
    Close Pdf

Embed the robot screenshot to the receipt PDF file
    [Arguments]    ${screenshot}    ${pdf}
    No Operation

Go to order another robot
    Click Element    id:order-another

Create a ZIP file of the receipts
    No Operation
    Archive Folder With ZIP    ${OUTPUT_DIR}${/}orders    ${OUTPUT_DIR}${/}orders.zip    recursive=False    include=order*.pdf

Close the browser
    Add icon    Warning
    Add heading    Close the browser window?
    Add submit buttons    buttons=No,Yes    default=Yes
    ${result}=    Run dialog
    IF    $result.submit == "Yes"
        Close Browser
    END

myTeardown
    Create a ZIP file of the receipts
    Close the browser
    Remove Directory    ${OUTPUT_DIR}${/}orders    recursive=True
    Remove Directory    ${OUTPUT_DIR}${/}previews    recursive=True
