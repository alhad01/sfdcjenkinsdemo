public class AccountRelatedContactOppList
{
    //Instance of Wrapper Class AccountContactOppWrapper (List of Wrapper Class)
    public List<AccountContactOppWrapper> accConOppList { get; set;}
    
    //Constructor
    public AccountRelatedContactOppList()
    {
        if(accConOppList == null)
        {
            accConOppList = new List<AccountContactOppWrapper>();
            for (Account a : [select Name,Phone,Billingstate,Website from Account limit 10])
            {
                List<Contact> con = [select Id,Name from Contact where AccountId = :a.Id];
                List<Opportunity> opp = [select Name,StageName from Opportunity where AccountId = :a.Id];
                accConOppList.add(new AccountContactOppWrapper(a,con,opp));
            }
        }
    }
}