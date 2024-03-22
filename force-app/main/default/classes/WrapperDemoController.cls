public with sharing class WrapperDemoController {
    
    public List<AccountWrapper2> listAccountWrapper {get; set;}
    public List<Account> selectedAccounts{get;set;}

    public WrapperDemoController ()
    {
            listAccountWrapper = new List<AccountWrapper2>();
            searchRecord();
    }
    
    public void searchRecord()
    {
        listAccountWrapper.clear();
            for(Account a: [select Id, Name,BillingState, Website, Phone ,Active__c from Account limit 10]) 
            {
                listAccountWrapper.add(new AccountWrapper2(a));
            }
    }

    public void processSelected() 
    {
        selectedAccounts = new List<Account>();
        selectedAccounts.clear();
        for(AccountWrapper2 wrapAccountObj : listAccountWrapper) 
        {
            if(wrapAccountObj.selected == true) 
            {
                selectedAccounts.add(wrapAccountObj.acc);
            }
        }
    }

    public void ActivateData() 
    {
        for(Account acc : selectedAccounts )
        {
            acc.Active__c ='Yes';
        }
        update selectedAccounts ;
        searchRecord();
    }

    public void DeActivateData() 
    {
        for(Account acc : selectedAccounts )
        {
            acc.Active__c ='No';
        }
        update selectedAccounts ;
        searchRecord();
    }
}