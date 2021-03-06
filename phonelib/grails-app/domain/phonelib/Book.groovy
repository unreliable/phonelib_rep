package phonelib

class Book {

	String title
	String isbn13
	
    static constraints = {
		title(blank:false, nullable:false, unique:true)
		isbn13(blank:false, unique:false)
    }
	
	static hasMany=[borrow:Borrow]	
}
