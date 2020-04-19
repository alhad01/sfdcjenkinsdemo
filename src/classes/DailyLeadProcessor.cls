global class DailyLeadProcessor implements schedulable
{
    global void execute (schedulableContext context)
    {
        List<Lead> lead = new List<Lead>();
        lead = [select Id,Name from Lead where LeadSource = ''];
        for(Lead l :lead)
        {
        	l.LeadSource = 'Dreamforce';
            lead.add(l);
        }
    }
}