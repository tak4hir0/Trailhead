public class AccountHandler {
    public static Account insertNewAccount(String name){
        Account acc = new Account();
        try {
            acc.Name = name;
            insert acc;
        } catch (Exception e){
            return null;
        }
        return acc; 
    }
}