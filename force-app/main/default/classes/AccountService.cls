public class AccountService {
	 public Account createAccount( String accountName, String accountNumber, String phone) {
      Account newAcct = new Account(
        Name = accountName,
        AccountNumber = accountNumber,
        Phone = phone
       // TickerSymbol = accountNumber
      );
      return newAcct;
    }
}