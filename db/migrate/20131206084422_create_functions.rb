class CreateFunctions < ActiveRecord::Migration
  def change
    create_table :functions do |t|
      t.string :description
      t.integer :portfolio_elem_id

      t.timestamps
    end
    add_index :functions, [:id, :created_at]
  end
end
