class CreatePrintJob < ActiveRecord::Migration[5.0]
  def change
    create_table :print_jobs do |t|
      t.timestamps
      t.integer :job_status
      t.datetime :quote_date
      t.float :quote_price
      t.integer :page_amount
    end
  end
end
