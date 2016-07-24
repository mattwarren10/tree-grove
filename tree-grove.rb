class TreeGrove
	
	def initialize
		@trees = []
	end

	def age!
		@trees.each do |t|
			t.age+=1
		end
	end

	def add_tree(t)
		@trees.push(t)
	end

	def trees
		@trees
	end

	def mature_trees
		#all trees bearing fruit
	end

	def dead_trees
		#returns all dead trees
	end

end

class FruitTree
	attr_accessor :height, :age
	def initialize(height, age)
		@fruit = []
		@height = height
		@age = age
	end

	def height
		@height 
	end

	def age
		@age
	end

	def age!
		@age+= 1
		@height+= 2
	end

	def calc_diameter
		total_diameter = 0
		@fruit.each do |o|
			total_diameter += o.diameter
		end
		avg = sputs
putsf('%.2f', (total_diameter/@oranges.length))
	end

	def any_fruit?
		@fruit.length > 0

	end

	def grow_fruit(o)
		@fruit.push(o)
	end

	def pick_fruit!
		@fruit.delete_at(0)
	end

	def dead?
		if @age == 40
			true
		else
			false
		end
	end
end

class Fruit
	attr_accessor :diameter
	def initialize(diameter)
		@diameter = diameter
	end
end

class OrangeTree < FruitTree
attr_accessor :height, :age
	def initialize(height, age)
		super(height, age)
	end

	def height
		@height+=1.2
	end

end

class Orange < Fruit

end

class AppleTree < FruitTree
attr_accessor :height, :age
	def initialize(height, age)
		super(height, age)
	end

	def height
		@height+=1.4
	end
end

class Apple < Fruit

end

class PearTree < FruitTree
attr_accessor :height, :age
	def initialize(height, age)
		super(height, age)
	end

	def height
		@height+=1.5
	end
end

class Pear < Fruit

end




treegrove = TreeGrove.new
orange_tree = OrangeTree.new(10, 1)
apple_tree = AppleTree.new(10, 1)
pear_tree = PearTree.new(10, 1)

treegrove.add_tree(orange_tree)
treegrove.add_tree(apple_tree)
treegrove.add_tree(pear_tree)

