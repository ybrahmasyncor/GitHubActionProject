public class MixedDMLException1 {
	public void create()
    {
        callme();
         Account acc=new Account();
        acc.name='MixedDMLException';
        insert acc;
    }
    @future
    public static void callme()
    {
        profile p=[select id from profile where name='CIS Platform Profile' ];
        UserRole r=[select id from UserRole where name='CEO'];
        User u=new User (alias='CIS Platform Profile',email='yvenkatabrahmam@gmail.com', emailencodingkey='en_US',
            localesidkey='en_US', profileid=p.Id,userroleid=r.id,timezonesidkey='America/Los_Angles',
            username='venb.mca@gmail.com');
        insert u;
    }
    }