@isTest
public class DailyLeadProcessorTest
{
	public static TestMethod void LeadTest()
    {
        List<Lead> lead = new List<Lead>();
        for (INTEGER i=0;i<200;i++)
        {
            lead.add(new Lead(lastname = 'ABC', company = 'ABC'+i));
        }
        insert lead;
        
        Test.startTest();
	    
        DailyLeadProcessor DLP = new DailyLeadProcessor();
        String sch = '0 0 0 2 6 ? 2022';
		String jobID = System.schedule('Daily Lead Processor', sch, DLP);
        
	    Test.stopTest();
    }
}