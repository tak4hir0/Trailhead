public with sharing class ContactUpdateExtension {
    public String statusToSet {get;set;}
    private Contact c;

    public ContactUpdateExtension(ApexPages.StandardController ctr) {
        c = [SELECT Status__c FROM Contact WHERE Id=: ctr.getRecord().Id]; 
    }
    
    public PageReference updateStatus() {        
        if (!Schema.sObjectType.Contact.fields.Name.isUpdateable()){
          return null;
        }
        
        c.Status__c = statusToSet;
        
        update c;
        return null;
    }
    
    public PageReference updateStatus2() {        
        c.Status__c = statusToSet;
        
        update c;
        return null;
    }
}