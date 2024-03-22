public class Scenario3 {
    public Account acc {set;get;}
    public Contact con {set;get;}
    public Scenario3(){
       acc=new Account();
       con=new Contact();
    }
    public void validate(){
        if(acc.Industry=='Banking' &&( acc.Phone==''|| acc.Phone==null) ){
            ApexPages.Message msg=new Apexpages.Message(ApexPages.Severity.Error,'Phone Number cannot be null');
            ApexPages.addMessage(msg);
        }else{
            Apexpages.Message msg1=new ApexPages.message(ApexPages.Severity.CONFIRM,'Record Saved');
            ApexPages.addMessage(msg1);
        }
    }
    public void reset(){
        acc=new Account();
        con=new Contact();
    }
}