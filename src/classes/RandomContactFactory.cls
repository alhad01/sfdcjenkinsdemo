public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numCnt, String LstName){
        
        List<Contact> conList = new List<Contact>();
        
        for (integer i=0; i<numCnt; i++){
            Contact con = new Contact (LastName = LstName,
                                       FirstName = 'Test '+i);
            conList.add(con);
        }
        
        return conList;
    }
}