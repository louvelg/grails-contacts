package contact

class Contact {

	String firstname
	String lastname
	String telephonenumber
	Date birthday

    static constraints = {
		 telephonenumber matches: "[0-9][0-9] ?[0-9][0-9] ?[0-9][0-9] ?[0-9][0-9] ?[0-9][0-9]"
    }
}
