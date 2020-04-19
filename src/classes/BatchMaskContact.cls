global class BatchMaskContact implements Database.Batchable<SObject>
{
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
    	string query = 'select Id,email,AssistantPhone,HomePhone,MobilePhone,OtherPhone,Phone from Contact';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext bc , List<Contact> conList)
    {
        
        for (contact con: conList)
        {
            if (con.Email != null)
            {
            	con.Email = con.Id+'@xyz.com';
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
        if (conList != null && conList.size()>0)
        {
        	Database.update(conList);
        }
          
    }
    global void finish(Database.BatchableContext bc)
    {
        
    }
}