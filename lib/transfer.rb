class Transfer
  
  attr_reader :source, :destination, :amount
  
  def initialize(source, destination, amount)
    @source = source
    @destination = destination
    @amount = amount
  end
  
end
