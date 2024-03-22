public class Apex_Example_5 {
    @AuraEnabled
    public static String insertAccount(String name,String industry, String rating){
        String result;
        try{
            Account a= new Account();
            a.Name = name;
            a.Industry = industry;
            a.Rating = rating;
            insert a;
            result = a.Id;
        }catch(Exception e){
            result = e.getMessage();
            
        }
        return result;
    }
}