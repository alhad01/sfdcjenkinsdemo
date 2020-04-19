@isTest
public class TestRestrictContactByName {
    @isTest static void Test1(){
       Contact con = new Contact(Lastname='INVALIDNAME');
    
        Test.startTest();
        Database.SaveResult result = Database.insert(con,false);
        Test.stopTest();
        
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
    }
}