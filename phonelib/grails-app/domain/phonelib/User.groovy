package phonelib

class User {
	String userName
	String password

	static constraints = {
		userName(blank:false, nullable:false, unique:true)
		password(blank:false, password:true)
	}
	//static belongsTo=[role:Role]
	static hasMany=[books:Book]
}
