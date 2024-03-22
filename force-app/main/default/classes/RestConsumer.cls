@isTest
public class RestConsumer {
  @isTest
    static void testme(){
        RestRequest request=new RestRequest();
        RestResponse response=new RestResponse();
        request.requestURI='/services/apexrest/mycall';
        request.httpMethod='GET';
        RestContext.request=request;
        RestContext.response=response;
        String result=RestExample.call();
        System.assertEquals(result,'This is a test call');
    }
}