require 'statement'
require 'transactions'

describe Statement do
  let(:statement) { described_class.new }
  let(:transactions) { [transaction_one, transaction_two] }
  let(:transaction_one) do
    instance_double(Transaction, credit: 100, debit: 0, balance: 100, date: '13/01/2021')
  end
  let(:transaction_two) do
    instance_double(Transaction, credit: 0, debit: 50, balance: 50, date: '13/01/2021')
  end

  context 'Display Bank Statement' do
    it 'displays the Bank Statement with transactions' do
      expect do
        statement.print_statement(transactions)
      end.to output("date || credit || debit || balance\n13/01/2021 || 0.00 || 50.00 || 50.00\n13/01/2021 || 100.00 || 0.00 || 100.00\n").to_stdout
    end
  end
end
