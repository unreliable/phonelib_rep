package phonelib

class Borrow {
	//User owner
	Date dateCreated
	static belongsTo=[user:User,book:Book]

}
