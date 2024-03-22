public class SAccount {
    public Account acc{set;get;}
    public SAccount(){
        acc=new Account();
    }
    public void save(){
        ApexPages.Message msg1=new ApexPages.Message(ApexPages.Severity.CONFIRM,'record Saved');
        
    }
    Public void cancel(){
        acc=new Account();
    }
}