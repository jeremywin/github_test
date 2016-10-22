({
    send : function(component, event) {
        console.log('v.phone : ' + component.get("v.phoneNum"));
        var phone = component.get("v.phoneNum");
        console.log('component phone : ' + component.get("v.phoneNum"));
        var appEvent = $A.get("e.c:PhoneNumberEvent");
        appEvent.setParams({
            "phone" : phone
       }).fire();
        console.log('v.phone : ' + event.getParam("phone"));
    }
})