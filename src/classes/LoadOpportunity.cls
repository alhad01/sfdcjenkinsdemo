public with sharing class LoadOpportunity
{
	@AuraEnabled
    public static List<Opportunity> getOpp()
    {
        List<Opportunity> opty = new List<Opportunity>();
        opty = [select Id, Name from Opportunity];
        return opty;
    }
}