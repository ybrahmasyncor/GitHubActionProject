public class SOQLExamples2 {
    public List<AccountWrap> accounts {set;get;}
    public SOQLExamples2()
    {
        List<Account> accs=[select Name,Phone,Industry,Rating,Type from Account];
        accounts=new List<AccountWrap>();
        for(Account a:accs)
        {
            AccountWrap aw=new AccountWrap();
            aw.acc=a;
            aw.flag=false;
            accounts.add(aw);
        }
    }

}