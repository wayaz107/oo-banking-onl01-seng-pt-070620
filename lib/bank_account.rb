class BankAccount

@account = []

  attr_accessor :balance, :status, :account
  attr_accessor :name

def initialize(name)
  @name = name
  @balance = 1000
  @status = "open"
end

def deposit
  @account << self
end

def display_balance
  @balance
end

def valid?
  status = "open" && @balance > 0
end

def close_account
  @account.delete
end

end
