({
	fireappevent : function(component, event, helper)
    {
        var evt = $A.get("e.c:appEvent");
        evt.setParams({"message":"Application Event Fired"});
        evt.fire();
	}
})