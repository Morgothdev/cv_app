class ZmianaNazwPortfolio < ActiveRecord::Migration
  def change
  	rename_table :portfolio_elems, :portfolio
  	rename_column :functions, :portfolio_elem_id, :portfolio_id
  end
end
