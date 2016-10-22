({
    answer : function(component, event) {
        var phone = event.getParam("phone");
        component.set("v.number", phone);
    }
})