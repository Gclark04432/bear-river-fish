class River

attr_reader :name
attr_accessor :fish_population

  def initialize(name, fish_population)
    @name = name
    @fish_population = fish_population
  end

  def fish_count()
    return @fish_population.length()
  end

  def is_bear_hungry(bear)
    bear.food_count() == 0
  end

  def feed_bear_if_hungry(bear)
    if is_bear_hungry(bear)
      bear.stomach.push(@fish_population[0])
      @fish_population.shift()
    end
  end

end
