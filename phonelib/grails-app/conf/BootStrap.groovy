import phonelib.*
import grails.util.GrailsUtil

class BootStrap {

	def init = { servletContext ->
		switch (GrailsUtil.environment) {

			case  "development":
				createTestingUsers()
				createTestingBooks()
				break;

			case "production":
				println "No special configuration required"
				break;
		}
	}
    def destroy = {
    }
	void createTestingUsers(){
		for(i in 1..15) {
			def jane = new User(
					login:"knight${i}",
					password:"123456",
					)
			jane.save()
			if(jane.hasErrors()){
				println jane.errors
			}
		}
	}

	void createTestingBooks(){
		for(i in 1..15) {
			def book1 = new Book(
					title:"title${i}",
					isbn13:"9787111187776",
					)
			book1.save()
			if(book1.hasErrors()){
				println book1.errors
			}
		}
	}
}
