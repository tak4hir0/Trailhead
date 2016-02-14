({
    init : function(component, event, helper) {
        console.log('elfL1.init()');
        var action2 = component.get("c.getBattleStation");        
        action2.setCallback(this, function(response) {
            console.log(response.getReturnValue());
            component.set("v.Battle_Station", response.getReturnValue());
            $('select.elfForceEditable').removeAttr('disabled');    
        });
        $A.enqueueAction(action2);
    }, 
    save : function(component, event, helper) {
		debugger;
        console.log('save:1');
        var action = component.get("c.saveBattleStation");
        var battleStation = component.get("v.Battle_Station");
        action.setParams({"battleStation": battleStation});
        action.setCallback(this, function() {  console.log('SAVED.');  } );
        $A.enqueueAction(action);
        console.log('save:end');
    },
})