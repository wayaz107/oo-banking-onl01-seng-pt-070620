class Transfer
  # your code here
attr_reader   :sender, :receiver, :amount
attr_accessor :status


  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

def valid?
  sender.valid? && receiver.valid?
end

def execute_transaction
 if  @sender.balance > @amount && valid? && @status == "pending"
   @sender.balance -= @amount
   @receiver.balance +=@amount
   @status = "complete"
else
reject_transfer
end
end

def reverse_transfer
  if valid? && @receiver.balance > amount && @status == "complete"
    @sender.balance += @amount
    @receiver.balance -=@amount
    @status = "reversed"

  else
    reject_transfer
  end
end


def reject_transfer
  @status = "rejected"
   "Transaction rejected. Please check your account balance."
end
end
