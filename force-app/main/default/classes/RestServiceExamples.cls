public class RestServiceExamples {
    public String callme(){
        Http p=new Http();
        HttpRequest request=new HttpRequest();
        request.setEndPoint('https://ap5.venkatabrahmam.com/apex/one');
        request.setMethod('POST');
        request.setBody('name=satish');
        HttpResponse response=p.send(request);
        String body=response.getBody();
        return body;
    }
}