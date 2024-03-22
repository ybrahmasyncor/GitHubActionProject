public class AccountTable {
    public List<Account> accList {Set;get;}
    public Account acc 			{Set;get;}
    public Boolean flag			{set;get;}
    public AccountTable(){
        accList=new List<Account>();
        acc=new Account();
    }
    public void add(){  
         accList.add(acc);
         acc=new Account();
        
    }
}