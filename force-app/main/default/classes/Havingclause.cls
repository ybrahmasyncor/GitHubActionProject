public class Havingclause {
	public static void GetConatctsHavingClause()
    {
        Map<Id,Account> MapAccounts=new Map<Id,Account>([select id,name,industry,rating from Account where industry='Banking']);
        if(!MapAccounts.isEmpty())
        {
            List<Contact> lstcontacts=[select id,firstname,lastname,email,phone,fax,accountid from contact where accountid IN:MapAccounts.keyset()];
            if(!lstcontacts.isEmpty())
            {
                for(Contact con:lstcontacts)
                {
                    system.debug('Contact Record:'+con);
                }
                
            }
        }
    }
}