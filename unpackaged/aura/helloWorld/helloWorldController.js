({
	doInit : function(component, event, helper) {
		debugger;
        var cl_notProtected = $A.get("$Label.isvdev.cl");
        console.log('cl_notProtected:' + cl_notProtected);
		var cl_Protected = $A.get("$Label.isvdev.cl_p");
		console.log('cl_Protected' + cl_Protected);
        //console.log('>>>>' + cl);  
    }
})