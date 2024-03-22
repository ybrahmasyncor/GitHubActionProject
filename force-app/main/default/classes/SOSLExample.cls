public class SOSLExample {
    public List<Account> accs {set;get;}
    public List<Contact> cons {set;get;}
    public Boolean flag			{set;get;}
    public SOSLExample(){
        List<List<Sobject>> result=[FIND 'venkat' IN ALL FIELDS  RETURNING Account(Name,Industry,phone limit 1),Contact(LastName,FirstName where lastname='brahmam')];
     accs=(List<Account>)result[0];
     cons=(List<Contact>)result[1];
    }
}