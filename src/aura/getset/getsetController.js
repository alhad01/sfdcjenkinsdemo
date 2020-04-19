({
	getLabel : function(component, event, helper)
    {
		var lab = component.find("Button").get("v.label");
        component.set("v.GetLabel1",lab);
	}
})