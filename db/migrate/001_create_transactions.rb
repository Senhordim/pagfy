# frozen_string_literal: true
class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions, id: false do |t|
      t.string :uuid, primary_key: true
      t.string :type_transaction
      t.text :description
      t.decimal :amount, precision: 10, scale: 2
      t.timestamps
    end
  end
end
