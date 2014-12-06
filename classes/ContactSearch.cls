public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName, String pcode){
		return [Select Id, Name From Contact Where lastName like : '%' + lastName + '%' and MailingPostalCode =:pcode];
	}
}