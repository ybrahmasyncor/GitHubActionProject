public class MessageExample {
    public MessageExample(){
        ApexPages.Message msg1=new ApexPages.Message(ApexPages.Severity.CONFIRM,'Success Info');
        ApexPages.addMessage(msg1);
        ApexPages.Message msg2=new ApexPages.Message(ApexPages.Severity.ERROR,'Error Message');
        ApexPages.addMessage(msg2);
        ApexPages.Message msg3=new ApexPages.Message(ApexPages.Severity.WARNING,'Warning MEssage');
        ApexPages.addMessage(msg3);
    }
}