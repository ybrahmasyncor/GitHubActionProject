public class Soap_Example {
    public String username {set; get;}
    public String password {set; get;}
    public String accName {set; get;}
    public String industry {set; get;}
    public String result {set; get;}
    public String status {set; get;}
    
    
    public void login(){
        Partner_Example.Soap sp=new Partner_Example.Soap();
        Partner_Example.LoginResult loginDetails = sp.login(username, password);
        result = 'Session Id:'+ loginDetails.sessionId;
        Service_Example.Soap_Demo service = new Service_Example.Soap_Demo();
        Service_Example.SessionHeader_element head = new Service_Example.SessionHeader_element();
        head.sessionId = loginDetails.sessionId;
        service.SessionHeader = head;
        status = service.create(accName, industry);
    }
}