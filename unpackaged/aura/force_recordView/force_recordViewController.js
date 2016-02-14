({
	init : function(component, event, helper) {
        var action = component.get("c.getBattleStation");        
        action.setCallback(this, function(response) {
            component.set("v.Battle_Station", response.getReturnValue());
        });
        $A.enqueueAction(action);
    }
})