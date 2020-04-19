global class AccDelBatch implements database.Batchable<sObject>
{
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        string query = 'select ID,Name from Account limit 10';
        return database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<Account> acc) 
    {
        for (Account a : acc)
        {
            a.Name = a.Name + 'Updated By Batch Job';
        }
        Database.update(acc);
    }
    
    global void finish(Database.BatchableContext BC)
    {
        //Comment on 22 Oct 2019 Git Jenkins Demo
    }
}