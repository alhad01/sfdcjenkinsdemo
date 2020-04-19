@isTest
public class AccountTriggerTest
{
	@isTest static void TestCreateNewAccount()
    {
        List<Account> Accts = new List<Account>();
        for(Integer i=0; i < 200; i++)
        {
            Account acct = new Account(Name='Test Account ' + i, BillingState = 'CA');
            accts.add(acct);
        }
        
        Test.startTest();
        insert accts;                               
        Test.stopTest();
        
        for (Account a : Accts)
        {
            System.assertEquals('CA', a.ShippingState);
        }
    }
}