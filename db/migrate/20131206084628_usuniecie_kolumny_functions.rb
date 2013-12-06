class UsuniecieKolumnyFunctions < ActiveRecord::Migration
  def change
  	remove_column :portfolio_elems, :my_functions
  end
end
