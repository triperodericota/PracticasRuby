class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name, limit: 150
      t.string :e_number
      t.references :office, foreign_key: true

      t.timestamps
    end
    add_index :employees, :e_number
  end
end
