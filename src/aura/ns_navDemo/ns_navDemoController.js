({
    navigateToView : function(component, event, helper) {
        var destination = "c:ns_" + event.getParam("view") + "View";

        $A.createComponent(this, { message: component.get("v.message" }, 
            function(view) {
               var content = component.find("content");
               content.set("v.body", view);
        });
    }
})