require 'pry'
class TreeGrove
	attr_accessor :age
	def initialize(age)
		@trees = []
		@age = age
	end

	def age
		@age
	end

	def age!
		@age+=1
	end

	def add_tree(t)
		@trees.push(t)
	end

	def trees
		@trees
	end

	def mature_trees
		until self.dead?
			puts @trees[0].name, @trees[1].name, @trees[2].name
		end
	end

	def dead_trees
		#returns all dead trees
		puts @trees[0].name, @trees[1].name, @trees[2].name
		
	end

	def dead?
		if @age < 10
			false
		else
			true
		end
	end

end

class FruitTree
	attr_accessor :height, :name
	def initialize(height, name)
		@fruit = []
		@height = height
		@name = name
	end

	def height
		@height 
	end

	def calc_diameter
		total_diameter = 0
		@fruit.each do |o|
			total_diameter += o.diameter
		end
		avg = sprintf('%.2f', (total_diameter/@fruit.length))
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
end

class Fruit
	attr_accessor :diameter
	def initialize(diameter)
		@diameter = diameter
	end
end

class OrangeTree < FruitTree
attr_accessor :height
	def initialize(height, name)
		super(height, name)
	end

	def height
		@height+=1.2
	end

end

class Orange < Fruit

end

class AppleTree < FruitTree
attr_accessor :height
	def initialize(height, name)
		super(height, name)
	end

	def height
		@height+=1.4
	end
end

class Apple < Fruit

end

class PearTree < FruitTree
attr_accessor :height
	def initialize(height, name)
		super(height, name)
	end

	def height
		@height+=1.5
	end
end

class Pear < Fruit

end




treegrove = TreeGrove.new(1)
orange_tree = OrangeTree.new(10, "Orange Tree")
apple_tree = AppleTree.new(14, "Apple Tree")
pear_tree = PearTree.new(12, "Pear Tree")


orange1 = Orange.new(2.5)
orange2 = Orange.new(2.5)
orange3 = Orange.new(2.5)
orange4 = Orange.new(2.5)
orange5 = Orange.new(2.5)

apple1 = Apple.new(2)
apple2 = Apple.new(2)
apple3 = Apple.new(2)
apple4 = Apple.new(2)
apple5 = Apple.new(2)

pear1 = Pear.new(1)
pear2 = Pear.new(1)
pear3 = Pear.new(1)
pear4 = Pear.new(1)
pear5 = Pear.new(1)


orange_tree.grow_fruit(orange1)
orange_tree.grow_fruit(orange2)
orange_tree.grow_fruit(orange3)
orange_tree.grow_fruit(orange4)
orange_tree.grow_fruit(orange5)

apple_tree.grow_fruit(apple1)
apple_tree.grow_fruit(apple2)
apple_tree.grow_fruit(apple3)
apple_tree.grow_fruit(apple4)
apple_tree.grow_fruit(apple5)

pear_tree.grow_fruit(pear1)
pear_tree.grow_fruit(pear2)
pear_tree.grow_fruit(pear3)
pear_tree.grow_fruit(pear4)
pear_tree.grow_fruit(pear5)

treegrove.add_tree(orange_tree)
treegrove.add_tree(apple_tree)
treegrove.add_tree(pear_tree)

o_avg = orange_tree.calc_diameter
a_avg = apple_tree.calc_diameter
p_avg = pear_tree.calc_diameter

orange_tree.age! until orange_tree.any_fruit? 

puts "Orange tree is #{treegrove.age} years old and #{orange_tree.height} feet tall"
puts "Apple tree is #{treegrove.age} years old and #{apple_tree.height} feet tall"
puts "Pear tree is #{treegrove.age} years old and #{pear_tree.height} feet tall"

until treegrove.dead?
  o_basket = []
  a_basket = []
  p_basket = []
  
  while orange_tree.any_fruit?
    o_basket << orange_tree.pick_fruit!
  end

	orange1 = Orange.new(2.5)
	orange2 = Orange.new(2.5)
	orange3 = Orange.new(2.5)
	orange4 = Orange.new(2.5)
	orange5 = Orange.new(2.5)

	orange_tree.grow_fruit(orange1)
	orange_tree.grow_fruit(orange2)
	orange_tree.grow_fruit(orange3)
	orange_tree.grow_fruit(orange4)
	orange_tree.grow_fruit(orange5)

  while apple_tree.any_fruit?
    a_basket << apple_tree.pick_fruit!
  end

  	apple1 = Apple.new(2)
	apple2 = Apple.new(2)
	apple3 = Apple.new(2)
	apple4 = Apple.new(2)
	apple5 = Apple.new(2)

	apple_tree.grow_fruit(apple1)
	apple_tree.grow_fruit(apple2)
	apple_tree.grow_fruit(apple3)
	apple_tree.grow_fruit(apple4)
	apple_tree.grow_fruit(apple5)

  while pear_tree.any_fruit?
    p_basket << pear_tree.pick_fruit!
  end

	pear1 = Pear.new(1)
	pear2 = Pear.new(1)
	pear3 = Pear.new(1)
	pear4 = Pear.new(1)
	pear5 = Pear.new(1)

	pear_tree.grow_fruit(pear1)
	pear_tree.grow_fruit(pear2)
	pear_tree.grow_fruit(pear3)
	pear_tree.grow_fruit(pear4)
	pear_tree.grow_fruit(pear5)

  o_diameter = o_avg
  a_diameter = a_avg
  p_diameter = p_avg

  puts "Year #{treegrove.age} Report"
  puts "Orange Tree height: #{orange_tree.height} feet"
  puts "Apple Tree height: #{apple_tree.height} feet"
  puts "Pear Tree height: #{pear_tree.height} feet"
  puts "Harvest:     #{o_basket.size} oranges with an average diameter of #{o_diameter} inches
	     #{a_basket.size} apples with an average diameter of #{a_diameter} inches
             #{p_basket.size} pears with an average diameter of #{p_diameter} inches"
 
  # Age the tree another year
  treegrove.age!
end
puts "Mature trees: #{treegrove.mature_trees}"
puts "Dead trees: #{treegrove.dead_trees}"
puts "Alas, the trees, they're dead!"
binding.pry