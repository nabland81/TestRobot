*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
#Definition de variable de type dic
${url}=     https://opensource-demo.orangehrmlive.com/index.php/auth/login
${browser}=   gc

*** Test Cases ***
TC_001_login_test
    Open Browser   ${url}  ${browser}
    Maximize Browser Window  
    Input Text      id=txtUsername    Admin
    Input Text      id=txtPassword    admin123
    Sleep    3s   
    Click Button      id=btnLogin
    Page Should Contain    Dashboard    
    Click Element    id=welcome
    Click Link    link=Logout
    Close Window
    
TC_002_login_test
    Open Browser   ${url}  ${browser}
    Maximize Browser Window  
    Page Should Contain Textfield    id=txtUsername        
    Input Text      id=txtUsername    Admin
    Page Should Contain Textfield    id=txtPassword  
    Input Text      id=txtPassword    admin123
    Sleep    3s   
    Click Button      id=btnLogin
    #Page Should Contain    Dashboard    
    Page Should Not Contain    Dashboard   
    Click Element    id=welcome
    Click Link    link=Logout
    Close Window
    
TC_003_login_test
    Open Browser   https://login.salesforces.com/   gc
    Maximize Browser Window
    Click Element    id=rememberUn
    Checkbox Should Be Selected    id=rememberUn
    
TC_004_login_test
    Open Browser   https://login.salesforces.com/   gc
    Maximize Browser Window
    Input Text      id=username   text
    Input Password    id=password    Abcd
    Click Button    id=Login 
    #Element Text Should Be    id=error    expected     
    Element Text Should Not Be    id=error    expected           
       
TC_005_login_test
    Open Browser   https://login.salesforces.com/   gc
    Maximize Browser Window
    Title Should Be    Connexion | Salesforce
    Element Should Be Visible    id=username          
    
TC_006_login_test
   Log To Console    Nabil Git              
       
        