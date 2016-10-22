({
	firstSwitch : function(component, event, helper) {
		$A.createComponent("c:firstBody",{
			"style" : "height:initial;"
		},
		   function(newComp) {
		        var content = component.find("changes");
		        content.set("v.body", newComp);
		});
	}
})