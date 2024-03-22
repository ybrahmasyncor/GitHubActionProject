@isTest
public class RestFinalTesting {
  @isTest
    static void testme(){
        RestRequest request=new RestRequest();
        RestResponse response=new RestResponse();
        request.requestURI='/services/apexrest/myclass';
        request.httpMethod='POST';
        RestContext.request=request;
        RestContext.response=response;
        String result=RestFinalClass.call('Satish');
        System.assertEquals('success',result);
    }
}