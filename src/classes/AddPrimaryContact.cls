public class AddPrimaryContact implements Queueable
{
	private Contact contacts;
    private String state;
    
    public AddPrimaryContact(Contact con, String state)
    {
        this.contacts = con;
        this.state = state;
    }
    public void execute(QueueableContext context)
    {
        List<Account> acnt = [select Id, Name, (Select Id,firstname,lastname from Contacts) from Account where BillingState = :state Limit 200];
        List <Contact> contact = new List<Contact>();
        for(Account accnt: acnt)
        {
            Contact con = new Contact();
            con.AccountId = accnt.Id;
            con.LastName = 'ABC';
        }
        insert contact;
    }
}