class Transfer
  # your code here
attr_accessor   :status, :sender, :receiver, :transfer

  def initialize(sender,receiver,transfer = 0)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @transfer = transfer
  end


def sender_valid?
  bankaccount.valid?
end

def reciever_valid?
bankaccount.valid?
end

def valid?(name)
  sender_valid?(name) && reciever_valid?(name)
end

def execute_transaction
end

def reverse_transfer
end


end
