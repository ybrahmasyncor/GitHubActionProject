public class SOQLExample1 {
    public List<Account> accs{set;get;}
    	public SOQLExample1()
        {
            accs=[select id,name,industry,rating from Account];
        }

}