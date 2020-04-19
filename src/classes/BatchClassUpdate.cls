global class BatchClassUpdate implements Database.Batchable<SObject>{

global Database.QueryLocator start(Database.BatchableContext BC)
	{
        String query = 'Select Id, Email,Phone,HomePhone,MobilePhone,OtherPhone from contact';
        return Database.getQueryLocator(query);
    }

global void execute(Database.BatchableContext BC, List<Contact> conList){
	integer i = 0;
	for (Contact Con: conList)
	{
        
        if (con.Email != NULL)
           {
                con.Email = Con.Id + Con.Email;
                i++;
           }
           if (con.Phone != NULL)
           {
				con.Phone = '987654321';
           }
            if (con.HomePhone != NULL)
           {
               con.HomePhone = '987654321';
           }
            if (con.MobilePhone != NULL)
           {
               con.MobilePhone = '987654321';
           }
            if (con.OtherPhone != NULL)
           {
               con.OtherPhone = '987654321';
           }
	}
    try
    {
		Database.update (conList,false);
	}
    catch(Exception e)
    {
		System.debug(e);
	}
}

global void finish(Database.BatchableContext BC){
}

}