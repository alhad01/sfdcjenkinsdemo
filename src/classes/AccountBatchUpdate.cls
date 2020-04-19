global class AccountBatchUpdate implements Database.Batchable<Sobject>
{
	global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String Query = 'Select Name,Description from Account';
        return Database.getQueryLocator(Query);
    }
    
    global void execute(Database.BatchableContext BC , List<Account> acc)
    {
        for (Account a : acc)
        {
            a.Description = null;
        }
        update acc;
    }
    
    global void finish(Database.BatchableContext BC)
    {
    }
}