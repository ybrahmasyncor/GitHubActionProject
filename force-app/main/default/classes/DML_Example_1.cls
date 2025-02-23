public class DML_Example_1 {
    public List<DML_Account> accounts {set;get;}
    public DML_Example_1(){
        accounts=new List<DML_Account>();
        add();
    }
    /* This will add new wrapper records to List<DML_Account> */
    public void add(){
        DML_Account ac=new DML_Account();
        accounts.add(ac);
    }
    public PageReference create(){
        List<Account> accs=new List<Account>();
        /* Take one by one record from wrapper list and create new account based on the 
         * data available in the DML_Account 
         */ 
        for(DML_Account wrapper:accounts){
            Account a =new Account();
            a.name=wrapper.name;
            a.industry=wrapper.industry;
            a.type=wrapper.type;
            a.phone=wrapper.phone;
            accs.add(a);
        }
        insert accs;
        PageReference p=new PageReference('/001?fcf=00B7F000005cycx');
        return p;
    }
    public void clear(){
        accounts.clear();
        add();
    }
}