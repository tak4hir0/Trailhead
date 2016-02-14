({
    init : function(component, event, helper) {
		debugger;
        var action = component.get("c.getBattleStation");        
        action.setCallback(this, function(response) {
            component.set("v.Battle_Station", response.getReturnValue());
            //workaround
            $('select.elfForceEditable').removeAttr('disabled');    
        });
        $A.enqueueAction(action);
    }, 
    save : function(component, event, helper) {
        var action = component.get("c.saveBattleStation");
        var battleStation = component.get("v.Battle_Station");
        action.setParams({"battleStation": battleStation});
        action.setCallback(this, function() {  console.log('SAVED.');  } );
        $A.enqueueAction(action);
    },
})