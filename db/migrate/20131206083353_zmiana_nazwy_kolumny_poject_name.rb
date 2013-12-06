class ZmianaNazwyKolumnyPojectName < ActiveRecord::Migration
  def change
    rename_column :portfolio_elems, :poject_name, :project_name
  end
end
