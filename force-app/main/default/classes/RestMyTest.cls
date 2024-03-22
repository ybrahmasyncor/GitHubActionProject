@isTest
public class RestMyTest {
  @isTest
    static void testme(){
        Test.setMock(HttpCalloutMock.class,new MyDummyResponse());
        RestServiceExamples rs=new RestServiceExamples();
       String result=rs.callme();
        System.assertEquals(result,'This is example');
    }
}