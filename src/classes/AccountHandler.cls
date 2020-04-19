public class AccountHandler {
    public static Account insertNewAccount(String accName){
        
        Account acnt = new Account();
        acnt.Name = accName;
        
        try{
            insert acnt;
        } catch (DmlException e){
            
            System.debug('A DML Exception has occured '+e.getMessage());
            return null;
        }
     return acnt;
    }
}