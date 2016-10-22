public class ParkLocator {

    public static String[] country(string countryName){
        String[] myArray = new List<String>();
        
        ParkService.ParksImplPort psC = new ParkService.ParksImplPort();
        
		myArray = psC.byCountry(countryName);
        return myArray;
    }
    
}