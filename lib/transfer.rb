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
    sender_check = @sender.clone
    sender_check.balance -= @amount
    sender_check.valid? && receiver.valid?
  end
  
  def execute_transaction
    return if @status == 'complete'
    # binding.pry
    if !valid?
      return 'Transaction rejected. Please check your account balance.'
      @status = 'rejected'
    end
    @sender.balance -= amount
    @receiver.balance += amount
    @status = 'complete'
  end
  
end
