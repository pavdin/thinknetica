class Wagon
  include CompanyName

  attr_reader :type

  def initialize(number)
    @number = number
    @train = []
    @type
  end

  def train_in(train)
    @train.push train
  end

  def train_out(train)
    @train.delete(train)
  end
end
