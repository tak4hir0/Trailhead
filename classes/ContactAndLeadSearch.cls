public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String word){
        List<List<sObject>> searchList = [FIND :word IN ALL FIELDS RETURNING Lead(FirstName,LastName),Contact(FirstName,LastName)];
        return searchList;
    }
}