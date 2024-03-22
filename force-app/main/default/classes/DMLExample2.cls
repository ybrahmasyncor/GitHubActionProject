public class DMLExample2 {
    public Account acc {set;get;}
    public DMLExample2(){
        acc=new Account();
    }
    public PageReference create(){
        try{
            insert acc;
            PageReference p=new PageReference('/apex/001/o='+acc.id);
            return p;
        }catch(Exception e){
            ApexPages.Message msg=new ApexPages.Message(Apexpages.Severity.Error,'Insertion Failed');
            Apexpages.addMessage(msg);
            return null;
        }
    }
}