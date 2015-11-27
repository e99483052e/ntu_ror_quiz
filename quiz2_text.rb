class Person
	attr_accessor :name, :gender, :profession

	def initialize(name, gender, profession)
		@name = name
		@gender = gender
		@profession = profession
	end

	

User.new("Bob", "male", "Engineer")