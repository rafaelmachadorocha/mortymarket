class AddPaymentToExchanges < ActiveRecord::Migration[6.0]
  def change
    add_column :exchanges, :payment, :string
  end
end
