public class ChatterAnswers {
// 2nd line commit    
// change in branch1

// Changes in code for talktalk

// changes in developer environment.
public String createAccount(String firstname, String lastname, Id siteAdminId) {
         Account a = new Account(name = firstname + ' ' + lastname, ownerId = siteAdminId);
         insert a;
         return a.Id;
    }
}