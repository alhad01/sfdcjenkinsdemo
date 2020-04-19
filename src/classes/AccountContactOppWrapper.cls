public class AccountContactOppWrapper
{
    public Account acc { get; set;}
    public list<Contact> con { get; set;}
    public list<Opportunity> opp { get; set;}
    
    //Pass Account, Contact and Opportunity to Constructor
    public AccountContactOppWrapper (Account a, List<Contact> c, List<Opportunity> o)
    {
    	acc = a;
        con = c;
        opp = o;
    }
}