public class DF15_LightningAccountController {

    @AuraEnabled
    public static list<Account> getAccounts(){
        return [select id, name, phone from account];
    }
}