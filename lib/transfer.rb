# require 'pry'
class Transfer
  
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end
  
  def valid?
    return false unless sender.valid?
    return false unless receiver.valid?
    return false unless sender.valid?
  end
  
  def execute_transaction
    return if @status == 'complete'
    # binding.pry
    if !valid?
      return 'Transaction rejected. Please check your account balance.'
    end
    @sender.balance -= amount
    @receiver.balance += amount
    @status = 'complete'
  end
  
end
