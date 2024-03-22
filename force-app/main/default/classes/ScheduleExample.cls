public class ScheduleExample implements Schedulable {

		public void execute(SchedulableContext sc){
		
		     List<Account> accs=[select id from Account where createdDate=THIS_WEEK];
		     delete accs;

		}
	}