@RestResource(urlmapping='/mylastcall/*')
global class RestResource {
    @HttpDelete
    global static String deleteAccounts(){
        List<Account> accs=[select id from Account where createdDate=TODAY];
        Database.DeleteResult[] result=Database.delete(accs,false);
        System.JSONGenerator jp=JSON.createGenerator(true);
        jp.writeStartObject();
        jp.writeFieldName('Records');
        jp.writeStartArray();
        for(Database.DeleteResult r :result){
            if(r.isSuccess()){
                jp.writeId(''+r.getId());
            }
        }
        jp.writeEndArray();
        jp.writeEndObject();
        String myresult=jp.getAsString();
        return myResult;
    }
}