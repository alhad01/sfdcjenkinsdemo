public class MaskContact
{
    public static List<Contact> ContactList()
    {
    	List<Contact> conList = new List<Contact> ();
    	conList = [SELECT Id,Email,HomePhone,MobilePhone,Phone,OtherPhone FROM Contact WHERE Id = '0037F00000QrGMY' ];
        
        List<Contact> updatedconList = new List<Contact>();
        for (Contact con: conList)
        {
           if (con.Email != NULL)
           {
				con.Email = con.Id+'@xyz.com';
           }
           if (con.Phone != NULL)
           {
               con.Phone = '1234567890';
           }
            if (con.HomePhone != NULL)
           {
               con.HomePhone = '1234567890';
           }
            if (con.MobilePhone != NULL)
           {
               con.MobilePhone = '124567890';
           }
            if (con.OtherPhone != NULL)
           {
               con.OtherPhone = '1234567890';
           }
           updatedconList.add(con);
        }
        
        Database.SaveResult[] srList = Database.update(updatedconList,false);
        return conList;
   }
}