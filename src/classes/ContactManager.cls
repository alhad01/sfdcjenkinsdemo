public class ContactManager {
	
    public void createContact(Contact con){
        try{
            insert con;
        }catch(DMLException ex){
            System.debug('Problem while inserting record '+ex.getMessage());
        }
    }
}