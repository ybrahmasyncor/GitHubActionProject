public class GlobalSearchUtility 
	{
		Public static void GlobalSearch(string searchText)
		{
			if(searchText != null && searchText != '')
			{
				string soslQuery ='FIND ' + '\''+ searchText + '*' + '\''+ ' IN ALL FIELDS RETURNING '+
									'Account(id, name, rating, industry, active__c) ,'+
									'Contact(id, firstname, lastname, email, title), '+
									'Lead(Id, firstname, lastname, email, title, status)';
									
				
				// Execute the Query...
				List<List<SObject>> results = Search.query(soslQuery);
				
				// Display the Records...
				if(!results.isEmpty())
				{
					// Store the records into the collections, by typecasting into
					// associated type.
				
					List<Account> lstAccounts = (List<Account>) results.get(0);
					List<Contact> lstContacts = (List<Contact>) results.get(1);
					List<Lead> lstLeads = (List<Lead>) results.get(2);
					
				
					system.debug('Accounts Records Size : '+ lstAccounts.size());
					if(! lstAccounts.isEmpty())
					{                
						for(Account acc : lstAccounts)
						{
							system.debug('Account Record is..: '+ acc);
						}
					}
				
					system.debug('Contacts Collection size...: '+ lstContacts.size());
					if(! lstcontacts.isEmpty())
					{
						for(Contact con : lstContacts)
						{
							system.debug('Contact Record is..: '+ con);
						}
					}
				
					system.debug('Lead Records Collection size...: '+ lstLeads.size());
					if(! lstLeads.isEmpty())
					{
						for(Lead ld : lstLeads)
						{
							system.debug('Lead Record is...: '+ ld);
						}
					}            
				
					
				}
			}
		}
	}