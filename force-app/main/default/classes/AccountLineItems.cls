public class AccountLineItems {
    public List<AccountWrapper> accounts {set;get;}
    public AccountLineItems(){
        accounts=new List<AccountWrapper>();
        add();
    }
    public void add(){
        for(Integer i=1;i<=3;i++){
            AccountWrapper aw=new AccountWrapper();
            aw.acc=new Account();
            accounts.add(aw);
        }
    }
 
}