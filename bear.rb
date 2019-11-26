class Bear

  attr_reader :name, :type
  attr_accessor :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count()
    return @stomach.length()
  end

  def take_fish_from_river(river)
    @stomach.push(river.fish_population[0])
    river.fish_population.shift()
  end

  def roar()
    return "Roar!!"
  end

end
