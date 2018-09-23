class Person

  attr_reader :name, :victory

  def initialize(name)
    @name = name
    @victory = false
  end

  def winner
    @victory = true
  end

end
