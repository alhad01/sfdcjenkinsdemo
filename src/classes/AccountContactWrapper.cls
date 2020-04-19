public class AccountContactWrapper 
{
    public Account acc { get; set;}
    public List<Contact> con { get; set;}
    
    public AccountContactWrapper(Account a, List<Contact> c)
    {
        acc = a;
        con = c;
    }
}