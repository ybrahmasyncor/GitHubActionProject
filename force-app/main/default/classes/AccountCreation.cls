@RestResource(urlmapping='/newAccounts')
global class AccountCreation {
  @HttpGet
    global static String create(){
        String name =RestContext.request.params.get('name');
        String industry=RestContext.request.params.get('industry');
        System.JSONGenerator jp=JSON.createGenerator(true);
        jp.writeStartObject();
        try{
            Account a=new Account();
            a.name=name;
            a.industry=industry;
            insert a;
            jp.writeStringField('Status','Success');
            jp.writeIdField('Id',a.id);
        }catch(Exception e){
            jp.writeStringField('Status','Failed');
            jp.writeStringField('Error',e.getMessage());
        }
        jp.writeEndObject();
        String result=jp.getAsString();
        return result;
    }
    @HttpPost
    global static String accCreate(String name,String industry){
         System.JSONGenerator jp=JSON.createGenerator(true);
        jp.writeStartObject();
        try{
            Account a=new Account();
            a.name=name;
            a.industry=industry;
            insert a;
            jp.writeStringField('Status','Success');
            jp.writeIdField('Id',a.id);
        }catch(Exception e){
            jp.writeStringField('Status','Failed');
            jp.writeStringField('Error',e.getMessage());
        }
        jp.writeEndObject();
        String result=jp.getAsString();
        return result;
        
    }
}