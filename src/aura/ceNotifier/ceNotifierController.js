({
	firecomponentevent : function(component, event, helper) {
		var evt = component.getEvent("ComponentEvent");
        evt.setParams({"message" : "A component event fired me. " + 
                       "It all happened so fast. Now, I'm here!" });
        evt.fire();
	}
})