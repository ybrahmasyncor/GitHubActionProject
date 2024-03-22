@isTest
global class MyDummyResponse implements HttpCalloutMock{
    global HttpResponse respond(HttpRequest request){
        System.assertEquals(request.getEndPoint(),'https://ap5.venkatabrahmam.com/apex/one');
        System.assertEquals(request.getMethod(),'POST');
        HttpResponse response =new HttpResponse();
        response.setBody('This is example');
        return response;
    }
}