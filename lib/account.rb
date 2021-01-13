# frozen_string_literal: true

require_relative './transactions.rb'
require_relative './statement.rb'

class Account
  attr_reader :balance, :transactions

  def initialize(statement = Statement.new, transaction = Transaction)
    @balance = 0
    @transactions = []
    @transaction = transaction
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    deposit = Transaction.new(amount, 0, @balance)
    @transactions << deposit
  end

  def withdraw(amount)
    @balance -= amount
    withdrawal = Transaction.new(0, amount, @balance)
    @transactions << withdrawal
  end

  def print_statement
    @statement.print_statement(@transactions)
  end
end
