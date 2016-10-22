public class DF15_LightningContactController {

    @AuraEnabled
    public static list<Contact> getContacts(string thisID){
    system.debug('id from contact: ' + thisID);
        return [select id, name, phone from contact where accountID = : thisID];
    }
}