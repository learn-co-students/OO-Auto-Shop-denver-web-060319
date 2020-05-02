class Car

  attr_reader :make, :model
  attr_accessor :car_owner, :mechanic

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classification
    self.all.map { |c| c.classification }.uniq
  end

  def mechanics_exp
    Mechanic.all.select { |m| m.specialty == self.classification}
  end	 

end
