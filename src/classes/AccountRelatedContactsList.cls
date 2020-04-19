public class AccountRelatedContactsList
{
    public List<AccountContactWrapper> AccConList { get; set;}
    
    public AccountRelatedContactsList()
    {
        if(AccConList == null)
        {
         	AccConList = new List<AccountContactWrapper>();
            for(Account a : [select Name,Phone,Billingstate,Website from Account limit 10])
            {
             	List<Contact> con = [select Id,Name from Contact where AccountId = :a.Id];
                AccConList.add(new AccountContactWrapper(a,con));
            }
        }    
    }
}