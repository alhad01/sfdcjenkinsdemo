public class AccountSelectClassController
{
    public List<wrapAccount> wrapAccountList { get; set;}
    public List<Account> selectedAccount {get; set;}
        
    public AccountSelectClassController()
    {
        if(wrapAccountList == null)
        {
            wrapAccountList = new List<wrapAccount>();
            for (Account a : [select Name,BillingState,Phone from Account])
            {
                wrapAccountList.add(new wrapAccount(a));
            }
        }
    }
    
    public void processSelected ()
    {
        selectedAccount = new List<Account>();
        for (wrapAccount wrapAccountObj : wrapAccountList)
        {
            if (wrapAccountObj.selected == true)
            {
                selectedAccount.add(wrapAccountObj.acc);
            }
        }
    }
}