public class OpportunityTrigger
{
	public static void OpportunitySum(List<Opportunity> OPS)
    {
        Double TotalAmount = 0;
        for (Opportunity o : [SELECT Amount from Opportunity where CreatedDate = TODAY and CreatedByID = :UserInfo.getUserID()])
        {
            TotalAmount = TotalAmount + o.Amount;
        }
        
        for (Opportunity o1 : OPS)
        {
            TotalAmount = TotalAmount + o1.Amount;
            if(TotalAmount > 100000)
            {
                o1.addError('You Have Exceeded Your Daily Limit');
            }
        }
    }
    
}