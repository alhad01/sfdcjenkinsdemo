public class AccountProcessor
{
	@future
    public static void countContacts(Set<Id> AcntId)
    {
		List<Account> LstAcnt = [SELECT Id, Name, Number_of_Contacts__c FROM Account where id in :AcntId ];
        for (Account acc : LstAcnt)
        {
            List<Contact> LstContact = acc.Contacts;
            acc.Number_of_Contacts__c = LstContact.size();
        }
        update LstAcnt;
    }
}