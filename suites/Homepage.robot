*** Settings ***
Documentation       Homepage test cases
Library             SeleniumLibrary
Resource            ../pageObjects/Homepage.robot

*** Test Cases ***
User Should Be Able To See Homepage.
    [Documentation]       Test to verify that user should be able to see homepage
    [Setup]               Open Browser Chrome

    Verify Current Url Is Homepage Url
    Verify Homepage Title Appears
    Verify Homepage Subtitle Appears
    Verify Make Appointment Button Appears
    Verify Menu Button Appears
    Verify Homepage Footer Appears

    [Teardown]            Close Browser