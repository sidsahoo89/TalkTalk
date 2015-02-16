public class dataTableCon {

    public PageReference save() {
        return null;
    }


            

    List<Account> accounts;



    public List<Account> getAccounts() {

        if(accounts == null) accounts = [select name,type,Industry, owner.name from account limit 10];

        return accounts;

    }

}