@isTest
public class DummyTest
{
    @isTest
    private static void testElfL1()
    {
        isvdev__Battle_Station__c bs = new isvdev__Battle_Station__c(Name='test', isvdev__Project_Status__c='Green');
        insert bs;
        
        elfL1.getBattleStation();
        elfL1.saveBattleStation(bs);
    }
    @isTest
    private static void testCoverage()
    {
        Dummy.testCoverage();
    }    
}