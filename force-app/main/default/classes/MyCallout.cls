@isTest
global class MyCallout implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest req) {
       System.assertEquals(req.getEndpoint(),'https://venkatabrahmam.com/apex/page');
        System.assertEquals(req.getMethod(),'GET');
        HttpResponse response=new HttpResponse();
        response.setBody('RestTestClass');
        return response;
    }
}