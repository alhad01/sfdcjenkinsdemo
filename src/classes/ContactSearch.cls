public class ContactSearch {
    public static List<Contact> searchForContacts(String lName, String mpCode){
        
        List<Contact> conList = new List<Contact>();
        String lastName = lName;
        String code = mpCode;
        
        conList = [SELECT Id,Name FROM Contact
                   WHERE LastName = :lastName AND
                   MailingPostalCode = :code];
        return conList;
    }
}