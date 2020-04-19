({
	doInit : function(component, event, helper)
    {
		$A.createComponent
        (
            "lightning:button",
            {
                "aura:id" : "findableAuraId",
                "label" : "Click Here",
                "onclick" : component.getReference("c.handleClick")
            },
            function(newButton, status, errorMessage)
            {
                if(status === "SUCCESS" )
                {
                	var body = component.get("v.body");
                    body.push(newButton);
                    component.set("v.body",body);
                }
                else if(status === "INCOMPLETE")
                {
                    console.log("No response from server or client is offline.");
                }
                else if (status === "ERROR")
                {
                    console.log("Error: " + errorMessage);
                }
            }
        );
	},
    handleClick : function(component, event, helper)
    {
        console.log("button: " + component.find("findableAuraId"));
		console.log("button pressed");
    }
})