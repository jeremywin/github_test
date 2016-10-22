({
   doInit : function(component, event, helper) {      
      //Fetch the expense list from the Apex controller   
      helper.getAccountList(component);
   },
    receiveContacts : function(component, event) {
     var id = event.getParam("id");
       var action = component.get("c.getContacts");
       action.setParams({thisID : id});
   
       //Set up the callback
       var self = this;
       action.setCallback(this, function(actionResult) {
           component.set("v.contacts", actionResult.getReturnValue());            
       });
       $A.enqueueAction(action);
     } 
   }
})