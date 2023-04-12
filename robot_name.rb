class Robot
  attr_reader :name

  @@used_name_index = 0
  @@all_names = ("AA000".."ZZ999").to_a.shuffle

  def initialize
    @name = get_name
    next_index
  end

  def self.forget
   @@used_name_index = 0
  end

  def reset
    next_index
    @name = get_name
  end

  private

  def next_index
    @@used_name_index += 1
  end

  def get_name
    @@all_names[@@used_name_index]
  end
end
