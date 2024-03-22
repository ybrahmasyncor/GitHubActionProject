@RestResource(urlmapping='/venkat/*')
global class RestServiceCall {
  @HttpGet
    global static string call(){
         String indus = RestContext.request.params.get('industry');

        List<Account> accs=[select name from Account where industry=:indus ];
        System.JSONGenerator jp=JSON.createGenerator(true);
        jp.writeStartObject();
        jp.writeFieldName('Status');
        if(accs.size()>0){
            jp.writeString('Success');
            jp.writeFieldName('Account Names');
            jp.writeStartArray();
            for(Account a: accs){
                jp.writeString(a.name);
            }
            jp.writeEndArray();
        }else{
            jp.writeString('Failed');
        }
        jp.writeNumberField('Count',accs.size());
        jp.writeEndObject();
        String result=jp.getAsString();
        return result;
    }
  
    
}