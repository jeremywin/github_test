({
    navToFoo : function(component, event, helper) {
        $A.get("e.c:ns_navigateToView").setParams({view: "foo"}).fire();
    }
})