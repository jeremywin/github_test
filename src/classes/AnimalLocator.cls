public class AnimalLocator {
    
    public static string getAnimalNameById(integer animalId) {
        //animalID = 1;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        string animalName;
        animalName = '';
        //request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + animalId);
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + animalId);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            system.debug('response: ' + response.getBody());
            JSONParser parser = JSON.createParser(response.getBody());
            system.debug('parser: ' + parser);
            system.debug('nextToken top: ' + parser.nextToken() + ' value ' + parser.nextValue());
            system.debug('currentToken top: ' + parser.getCurrentToken() + ' name ' + parser.getCurrentName());
            if(parser.getCurrentToken() == JSONToken.START_OBJECT){
                Animal anm = (Animal)parser.readValueAs(Animal.class);                    
                system.debug('name: ' + anm.name );               
                animalName = anm.name;                    
            }
            
            
        }            
        /*    // Deserializes the JSON string into collections of primitive data types.
Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody()); 
List<Object> animals = (List<Object>) results.get('animals');
System.debug('Received the following animals:');
for (Object animal: animals) {
System.debug(animal);
} */
        //animalName = myAnimal.animal;
        return animalName;        
        
    }
    
    
    public class Animal
    {
        public Integer id;
        public String name;
        public String eats;
        public String says;   
        
        /*public Animal(Integer aid, string aname, string aeats, string asays){
            id = aid;
            name = aname;
            eats = aeats;
            says = asays;
        }*/
    }
    
    
    
}