# frozen_string_literal: true

require 'account'

describe Account do
  let(:account) { Account.new }
  let(:transaction) { Transaction.new(100, 0, 100, '13/01/2021') }
  let(:statement_class) { double(:statement_class, new: statement) }

  context 'when depositing money' do
    it 'responds to deposit method' do
      expect(account).to respond_to(:deposit).with(1).argument
    end

    it 'adds money to the bank account' do
      account.deposit(100)
      expect(account.balance).to eq 100
    end

    it 'adds deposit transaction to the transaction array' do
      account.deposit(100)
      expect(account.transactions).to include transaction
    end
  end

  context 'withdrawing money' do
    it 'responds to withdraw method' do
      expect(account).to respond_to(:withdraw).with(1).argument
    end

    it 'updates balance after withdrawal' do
      account.deposit(100)
      account.withdraw(50)
      expect(account.balance).to eq 50
    end

    it 'adds withdrawal to transaction array' do
      account.deposit(100)
      account.withdraw(50)
      expect(account.transactions).to include transaction
    end
  end

  context 'printing the bank statement' do
    it 'sends the transaction array to the statement class' do
      account.deposit(100)
      expect(account.print_statement).to eq(transaction)
    end
  end
end
