class Robot
  attr_reader :name
  def initialize
    @name = random_name
  end

  def self.forget

  end

  def random_name
    ("AA000".."ZZ999").to_a.sample
    # shuffle
  end

  def reset
    @name = random_name
  end
end
