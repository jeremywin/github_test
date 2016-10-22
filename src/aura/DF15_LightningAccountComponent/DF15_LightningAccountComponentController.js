({
   doInit : function(component, event, helper) {      
      //Fetch the expense list from the Apex controller   
      helper.getAccountList(component);
   },
    lookForContacts : function(component, event) {
        var id = event.target.getAttribute("data-data") || event.target.parentNode.getAttribute("data-data");
        console.log("id: " + id);
        var appEvent = $A.get("e.c:DF15_ContactLookupEvent");
        appEvent.setParams({
            "id" : id
       }).fire();
    }    
})