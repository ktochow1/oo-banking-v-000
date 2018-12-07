class Transfer
attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    sender.valid? && receiver.valid? && sender.balance >= self.amount
    # does sender balance(100) have equal to or greater than amount to transfer(30)

    
  end
  
  def execute_transaction
    if !self.valid?
        self.status=("rejected")
        "Transaction rejected. Please check your account balance."
        
    elsif self.status == "pending"
      
      receiver.balance += @amount
      sender.balance -= @amount
      self.status=("complete")
    end
  end
  
  
  
end
