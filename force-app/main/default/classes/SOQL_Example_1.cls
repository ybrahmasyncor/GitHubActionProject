public class SOQL_Example_1 {
    public List<Account> accounts {set;get;}
    public Integer size {Set;get;}
    public SOQL_Example_1(){
        accounts =[select Id,Name,Phone,Industry,Rating,Ownership from Account];
        
    }
}