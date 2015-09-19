# work in progress ...
class Blender
  def initialize(ingredients, switch)
    # Instance variables
    @ingredients = []
    @switch = false
    @name = name
  end

  def blend
    puts "#{@ingredients}"
  end

  def display
    puts "I am making a smoothie with this #{@ingredients} and I named the #{@name}"
  end
end

# make an object
# Objects are created on the heap
d = Blend.new('caljuice', 'MKJuice')
