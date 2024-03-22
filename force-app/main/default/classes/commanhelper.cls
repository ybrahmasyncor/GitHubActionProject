public class commanhelper {
	public static void GetAccountsGroupByIndustry()
    {
        AggregateResult[] result=[select industry,count(id) recordscount from Account Group By Industry];
        if(!result.isEmpty())
        {
            for(Aggregateresult agg:result)
            {
                system.debug('Industry:'+agg.get('Industry')+'----->Record count:' +agg.get('recordscount'));
                
            }
        }
    }
}