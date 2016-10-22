@isTest
public class ParkLocatorTest {
    @isTest static void testCallout() {              
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        // Call the method that invokes a callout
		string x = 'Germany';
        String[] tests = new String[]{'test 1','test 2','test 3'};
        String[] result = ParkLocator.country(x);
        // Verify that a fake result is returned
        System.assertEquals(tests, result); 
    }
}