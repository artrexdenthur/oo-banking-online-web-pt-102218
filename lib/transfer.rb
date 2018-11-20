class Transfer
  
  attr_reader :sender, :destination, :amount
  
  def initialize(sender, destination, amount)
    @sender = sender
    @destination = destination
    @amount = amount
  end
  
end
