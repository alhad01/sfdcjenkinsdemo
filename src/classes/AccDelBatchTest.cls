@isTest
public class AccDelBatchTest
{
    @testsetup
    static void createAccount()
    {
        List <Account> accn = new List<Account>();
        for (Integer i=0 ; i<20 ; i++)
        {
            Account a = new Account(Name='Alhad'+i);
            accn.add(a);
        }
        insert(accn);
    }
    
    public static testmethod void AccUpd()
    {
        Test.startTest();
        
        AccDelBatch AD = new AccDelBatch();
        Database.executeBatch(AD);
        
        Test.stopTest();
        
        System.assertEquals(20, [select count() from Account where name like '%Alhad%']);
    }
}