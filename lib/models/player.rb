class Player

	DEF_HP = 100
	DAMAGE_HP = 10

	attr_reader :name, :hitpoints
	
	def initialize(name, hitpoints = DEF_HP)
		@name = name
		@hitpoints = hitpoints
	end
	
	def attack(opponent)
		opponent.receive_damage
	end

	def receive_damage
		@hitpoints -= DAMAGE_HP
	end
end

