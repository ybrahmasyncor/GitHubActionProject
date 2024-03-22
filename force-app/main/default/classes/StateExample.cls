global class StateExample implements Database.Batchable<Sobject>,Database.StateFul {
		global Integer count=0;
    		global static Integer size=0;

    		global  Database.QueryLocator start(Database.BatchableContext bc){
        		return Database.getQueryLocator('select name from Account');
    		}

    		global void execute(Database.BatchableContext bc,List<Account> scope){
        		for(Account a: scope){
            			count=count+1;
            			size=size+1;
        		}
    		}
    		global void finish(Database.BatchableContext bc){
        		Account acc=new Account();
        		acc.Name='Size :'+size+' : Count:'+count;
        		insert acc;
    		}
	}