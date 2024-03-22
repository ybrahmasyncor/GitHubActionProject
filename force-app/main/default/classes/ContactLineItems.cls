public class ContactLineItems {
    public List<ContactWrapper> Contacts{set;get;}
    public ContactLineItems(){
        Contacts=new List<ContactWrapper>();
        add();
    }
    public void add(){
        
        for(Integer i=0;i<=3;i++){
            ContactWrapper cw=new ContactWrapper();
            cw.c=new Contact();
            Contacts.add(cw);
            
        }
    }
}