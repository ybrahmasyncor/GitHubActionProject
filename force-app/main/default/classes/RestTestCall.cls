@isTest
private class RestTestCall {
  @isTest
    static void testme(){
        Test.setMock(HttpCalloutMock.class, new MyCallout());
        ServiceCall st=new ServiceCall();
        st.create();
        Integer count=[select count() from Account];
        System.assertEquals(count,1);
    }
}