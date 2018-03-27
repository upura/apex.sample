public class AccountHandler {
    public static Account insertNewAccount(String acount_name) {
        try{
            // Create the account sObject 
            Account acct = new Account(Name=acount_name);
            // Insert the account by using DML
            insert acct;
            return acct;
        } catch(DmlException e){
			return null;           
        }
    }
}
