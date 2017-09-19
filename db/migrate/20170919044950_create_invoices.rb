class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.date :fecha
      t.string :modo_pago
      t.integer :estado

      t.timestamps
    end
  end
end
