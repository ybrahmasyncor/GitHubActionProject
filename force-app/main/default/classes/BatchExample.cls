global class BatchExample implements Database.Batchable<Sobject> {

    		global Database.QueryLocator start(Database.BatchableContext bc){

        		return Database.getQueryLocator('select id,ownerid from Account where industry=\'Finance\'');

    		}
    		global void execute(Database.BatchableContext bc,List<Account> scope){

        		User u=[select id from user where alias='vbrah'];

        		for(Account a: scope ){

            			a.ownerId=u.id;

        		}

        		update scope;
    		}
    		global void finish(Database.BatchableContext bc){
        
    		}
	}