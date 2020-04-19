public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String searchString){
        String searchItem = searchString;
        List<List<SObject>> searchList = [FIND :searchItem IN ALL FIELDS
                                          RETURNING Contact(FirstName, LastName),Lead(FirstName,LastName)];
        List<Contact> conList = (List<Contact>)searchList[0];
        List<Lead> leadList = (List<Lead>)searchList[1];
        System.debug(searchList);
        return searchList;
    }
}