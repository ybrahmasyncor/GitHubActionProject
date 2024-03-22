@RestResource(urlmapping='/myclass/*')
global class RestFinalClass {
  @HttpPost
    global static String  call(String name){
        Account acc=new Account();
        acc.name=name;
        insert acc;
        String result='success';
        return result;
    }
}