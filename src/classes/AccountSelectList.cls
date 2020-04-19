public class AccountSelectList
{
	//Create a list of Wrapper Class to store Account + Checkbox
    public List<AccountSelectListWrapper> accWrapper{ get; set;}
    
    //Created a List of Account to hold the selected Account Records
    public List<Account> selectedAccounts{ get; set;} 
    
    //Constructor
    public AccountSelectList()
    {
            if(accWrapper == null)
            {
                accWrapper = new list<AccountSelectListWrapper>();
                for (Account a: [select Name,Phone,BillingState from Account limit 10])
                {
                    accWrapper.add(new AccountSelectListWrapper(a));
                }
            }
    }
	
    //Method to Process Selected Account
    public void processSelectedAccount()
    {
        //List to store selected Accounts
        selectedAccounts = new List<Account>();
        for (AccountSelectListWrapper w : accWrapper)
        {
            if(w.selected == true)
            {
                selectedAccounts.add(w.acc);
            }
        }
    }

    //Wrapper Class
    public class AccountSelectListWrapper
    {
        //Declare Variable
        public Account acc{ get; set;}
        public Boolean selected{ get; set;}
        
        //Constructor of Wrapper Class
        public AccountSelectListWrapper(Account a)
        {
            acc = a;
            selected = false;
        }
    }
}