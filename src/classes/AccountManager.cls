@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {

    @HttpGet
    global static Account getAccount(){
        RestRequest request = RestContext.request;
        // grab the accountID from the inside of the URL
        List<String> urlList = request.requestURI.split('/');
        string accountID = urlList[urlList.size()-2];
        system.debug(accountID);
        
        Account result =  [select id,name,(select id,name from contacts where accountid =: accountID) 
                           from account 
                           where id =: accountID];
        return result;        
    }
    	
}