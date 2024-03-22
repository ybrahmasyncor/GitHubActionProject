public class MixedDMLExample {
		public void create(){
			Profile p = [SELECT Id FROM Profile WHERE Name='Students'];
			UserRole r = [SELECT Id FROM UserRole WHERE Name='CEO'];
			
					User u = new User(alias ='students', email='yvenkatabrahmam@gmail.com', 
					emailencodingkey='UTF-8', lastname='ven', 
				languagelocalekey='en_US', 
				localesidkey='en_US', profileid = p.Id, userroleid = r.Id,
				timezonesidkey='America/Los_Angeles', 
				username='venkat@dev1.com');
			insert u;
			Account acc=new Account();
			acc.Name='MixedDMLException';
			insert acc;
		}
	}