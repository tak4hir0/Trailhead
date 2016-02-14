public class elfL1 {
    
    @AuraEnabled
    public static isvdev__Battle_Station__c getBattleStation(){
        return (isvdev__Battle_Station__c) Database.query( ' SELECT Name, isvdev__Project_Status__c FROM isvdev__Battle_Station__c LIMIT 1 ' )[0];
    }
    
    @AuraEnabled
    public static isvdev__Battle_Station__c saveBattleStation(isvdev__Battle_Station__c battleStation){
        upsert battleStation;
        return battleStation;
    }
}