public class wrapAccount
{
    public Account acc { get; set;}
    public Boolean selected { get; set;}
    public wrapAccount(Account a)
    {
        acc = a;
        selected = false;
    }
}