@isTest
public class TestVerifyDate {
    
    @isTest static void Test1(){
        Date actual = VerifyDate.CheckDates(Date.parse('11/01/2018'), Date.parse('11/05/2018'));
        System.assertEquals(Date.parse('11/05/2018'), actual);
    }
    
        @isTest static void Test2(){
        Date actual = VerifyDate.CheckDates(Date.parse('11/01/2018'), Date.parse('10/05/2018'));
        System.assertEquals(Date.parse('11/30/2018'), actual);
    }
}