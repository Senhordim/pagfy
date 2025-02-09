# frozen_string_literal: true

class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :type
      t.text :description
      t.decimal :amount, precision: 10, scale: 2
      t.timestamps
    end
  end
end
