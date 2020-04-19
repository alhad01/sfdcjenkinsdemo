({
	getOpportunity : function(component, event, helper)
    {
		var oppt = component.get("c.getOpp");
        action.setcallback(this,function(response)
                           {
                               var state = response.getstate();
                               if(state === "SUCCESS")
                               {
                               		component.set("v.opp",response.getReturnValue());
                               }
            
							}
                           );
        $A.enqueueAction(action);
	}
})