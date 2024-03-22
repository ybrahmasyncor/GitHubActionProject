public class AccTable {
    public List<Account> accList {Set;get;}
    public Account acc 			{Set;get;}
    public Boolean flag			{set;get;}
    public AccTable(){
        accList=new List<Account>();
        acc=new Account();
    }
    public void add(){  
         accList.add(acc);
         acc=new Account();
        
    }
}