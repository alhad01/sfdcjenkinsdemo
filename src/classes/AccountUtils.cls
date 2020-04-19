public class AccountUtils
{
    public static List<Account> accountsByState(String state)
    {
        List<Account> Account = new List<Account>();
        Account = [select Id, Name from Account where BillingState = :state];
        return Account;
    }
}