({
    doInit: function(component, evt, helper) {
        var action = component.get("c.getAccount");
        action.setCallback(this, function(a) {
                component.set("v.account", a.getReturnValue());
        });
        $A.enqueueAction(action);
    },
})