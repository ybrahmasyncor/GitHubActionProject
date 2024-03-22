public class SOQL_Example {
   
    public List<Account> accounts   {set;get;}
    public SOQL_Example(){
        accounts =[select id,Name,Phone,Rating,Industry,ownership from Account ];
        
    }
}