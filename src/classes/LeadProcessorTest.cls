@isTest
public class LeadProcessorTest
{
	@testsetup
    static void setupdata()
    {
        List<Lead> lead = new List<Lead>();
        for (integer i=0;i<200;i++)
        {
            lead l = new lead();
            l.Company = 'ABC';
            l.LastName = 'XYZ';
            l.status = 'Open - Not Contacted';
            lead.add(l);
        }
        insert lead;
    }
    
    static testmethod void test()
    {
        Test.startTest();
		LeadProcessor lpt = new LeadProcessor();
        Id batchId = Database.executebatch(lpt);
        Test.stopTest();
    }
}