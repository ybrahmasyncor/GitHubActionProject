public class ServiceCall {
    public void create(){
        Http p=new Http();
        HttpRequest request=new HttpRequest();
        request.setEndPoint('https://venkatabrahmam.com/apex/page');
        request.setMethod('GET');
        HttpResponse response=p.send(request);
        String body=response.getBody();
        Account acc=new Account();
        acc.name=body;
        insert acc;
    }
}