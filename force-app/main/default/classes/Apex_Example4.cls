public class Apex_Example4 {
@AuraEnabled
    public static String getAccountName(String domain){
        String result;
        try{
            
        
        Account a = [ select name from Account where Industry = :domain LIMIT 1];
             result = a.Name;
            }catch(Exception e)
            {
            result = e.getMessage();
            }
        return result;
    }
}