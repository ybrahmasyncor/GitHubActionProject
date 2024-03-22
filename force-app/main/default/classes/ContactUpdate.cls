global  class ContactUpdate implements Database.Batchable<Sobject> {

    		global String query ;

    		global String fieldName;

    		global string value ;

    		global ContactUpdate(String query,String fieldName,String value){

        		this.query=query;

        		this.fieldName=fieldName;

        		this.value=value;

    		}
    		global Database.QueryLocator start(Database.BatchableContext bc){

        		return Database.getQueryLocator(query);
    		}

    		global void execute(Database.BatchableContext bc,List<Sobject> scope){
	
        		for(Sobject s : scope){

            			s.put(fieldName,value);
        		}

        		update scope;
    		}

    		global void finish(Database.BatchableContext bc){

        		Id jobId=bc.getJobId();

        		AsyncApexJob job=[SELECT MethodName,ParentJobId,Status,TotalJobItems FROM AsyncApexJob where id=:jobId]; 

    			System.debug('JobId :'+job.id);

        		System.debug('Method Name :'+job.methodName);
    		}
	}