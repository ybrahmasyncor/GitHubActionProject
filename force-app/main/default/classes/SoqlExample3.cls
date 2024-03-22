public class SoqlExample3 {
    public String accName 		{Set;get;}
    public String accIndustry 	{set;get;}
     public Boolean flag			{set;get;}
    public List<Account> accs	{set;get;}
    public void query(){
        accs=[select id,name,industry,phone from Account where name=:accName and industry=:accIndustry];
    }
}