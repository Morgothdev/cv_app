class CreatePortfolioElems < ActiveRecord::Migration
  def change
    create_table :portfolio_elems do |t|
      t.string :poject_name
      t.string :when
      t.string :description
      t.string :my_functions

      t.timestamps
    end
  end
end
