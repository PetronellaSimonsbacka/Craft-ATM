require './lib/account'
require 'pry'

class Person
  attr_accessor :name, :cash, :account

  def initialize(attrs = {})
    @name = verify_and_set_name(attrs)
    @cash = 0
    #@deposit += funds
  end

  def create_account
    @account = Account.new(owner: self)
  end

  def deposit(funds)
    if @account == nil
      raise RuntimeError, 'No account present'
    else
      @account.balance += funds
    end
  end

  private
  def verify_and_set_name(attrs)
    if attrs[:name] == nil
      raise 'A name is required'
    else
      attrs[:name]
    end
  end


end



  #  if attr [:account] == nil
  #    raise 'Can not deposit funds'
  #  else
  #    attr [:account]
  #  end
#  end
#end
