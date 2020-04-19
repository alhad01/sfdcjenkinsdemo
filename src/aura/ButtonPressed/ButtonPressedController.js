({
	whichbutton : function(component, event, helper)
    {
		//var button = event.getSource().get("v.label");
        var button = event.getSource().getLocalId();
		component.set("v.ButtonName",button);
	}
})