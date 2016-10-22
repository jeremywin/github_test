@IsTest
public class AccountManagerTest {

    @isTest static void testGetCaseById() {
        Id recordId = createTestRecord();
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri =
            '/services/apexrest/Accounts/' + recordId + '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account thisAccount = AccountManager.getAccount();
        // Verify results
        System.assert(thisAccount != null);
        System.assertEquals('Test record', thisAccount.Name);
    }    
    
    // Helper method for Accounts and Contacts
    static Id createTestRecord() {
        // Create test record
        Account accountTest = new Account(
            Name='Test record');
        insert accountTest;
        
        Contact contactTest1 = new Contact(
            FirstName='Test',
            LastName='One',
            AccountID = accountTest.Id);
        Contact contactTest2 = new Contact(
            FirstName='Test',
            LastName='Two',
            AccountID = accountTest.Id);
        List<Contact> testContacts = new List<Contact>();
        testContacts.add(contactTest1);
        testContacts.add(contactTest2);
        insert testContacts; 
        
        return accountTest.Id;
    }
}