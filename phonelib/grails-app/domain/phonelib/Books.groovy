package phonelib

class Books {
	String bookName
	String isbn

    static constraints = {
		bookName(blank:false, nullable:false, unique:true)
		isbn(blank:false, unique:true)
    }
}
