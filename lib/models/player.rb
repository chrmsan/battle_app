class Player

	DEF_HP = 100

	attr_reader :name, :hitpoints
	
	def initialize(name, hitpoints = DEF_HP)
		@name = name
		@hitpoints = hitpoints
	end
	

end

