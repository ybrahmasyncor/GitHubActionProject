public class AccountWrapper2 
    {
        public Account acc {get; set;}
        public Boolean selected {get; set;}
        public AccountWrapper2(Account a) 
        {
            acc = a;
            selected = false;
        }
    }