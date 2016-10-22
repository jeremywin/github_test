({
	calculate : function(component, event) {
        var getIn1 = component.find("inputOne");        
		var input1 = parseInt(getIn1.get("v.value"));        
        console.log("input1 = " + input1);
        
        var getIn2 = component.find("inputTwo");
		var input2 = parseInt(getIn2.get("v.value"));
        console.log("input2 = " + input2);
        
        var getIn3 = component.find("inputThree");
		var input3 = parseInt(getIn3.get("v.value"));
        console.log("input3 = " + input3);        
        
        var cValue = parseInt(input1 + input2 - input3);
        console.log("cValue = " + cValue);        
        
        var getOut = component.find("totalValue");
        getOut.set("v.value", cValue);
		
		
	}
})