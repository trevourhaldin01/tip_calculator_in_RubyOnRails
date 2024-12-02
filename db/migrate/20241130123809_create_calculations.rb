class CreateCalculations < ActiveRecord::Migration[8.0]
  def change
    create_table :calculations do |t|
      t.decimal :bill_amount
      t.decimal :tip_percentage
      t.decimal :tip_amount
      t.decimal :total_amount
      t.integer :people_count
      t.decimal :total_per_person

      t.timestamps
    end
  end
end
