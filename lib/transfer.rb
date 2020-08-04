class Transfer
  # your code here
attr_accessor   :status, :sender, :receiver, :amount

  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end


def sender_valid?(sender)
  sender.valid?
end

def reciever_valid?(receiver)
receiver.valid?
end

def valid?(name)
  sender_valid?(name) && reciever_valid?(name)
end

def execute_transaction
end

def reverse_transfer
end


end
