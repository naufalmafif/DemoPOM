*** Settings ***
Documentation         Homepage related keyword
Variables             homepage_locators.yaml

*** Variables ***
${HOMEPAGE_URL}     https://katalon-demo-cura.herokuapp.com/

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=chrome    url=${HOMEPAGE_URL}

Verify Current Url Is Homepage Url
    [Documentation]             Verify current url is homepage url
    Location Should Be          ${HOMEPAGE_URL}

Verify Homepage Title Appears
    [Documentation]             Verify homepage title appears
    Element Should Be Visible   ${title_homepage}

Verify Homepage Subtitle Appears
    Element Should Be Visible   //*[@class="text-vertical-center"]

Verify Make Appointment Button Appears
    Element Should Be Visible   //*[@id="btn-make-appointment"]

Verify Menu Button Appears
    Element Should Be Visible   //*[contains(@class, "toggle")]

Verify Homepage Footer Appears
    Element Should Be Visible   //*[@class="col-lg-10 col-lg-offset-1 text-center"]