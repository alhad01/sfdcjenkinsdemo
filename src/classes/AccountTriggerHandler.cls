public class AccountTriggerHandler
{
    public static void CreateAccounts(List<Account> accnt)
    {
        List<Account> Account = new List<Account>();
        for (Account a : accnt)
        {
            if (a.BillingState != a.ShippingState)
            {
                Account acnt = new Account();
                acnt.Name = a.Name;
                acnt.BillingState = a.BillingState;
                acnt.shippingstate = a.BillingState;
                Account.add(acnt);
            } 
        }
        insert Account;
    }
}