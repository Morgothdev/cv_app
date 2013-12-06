class PoprawkaDoZmianTabeli < ActiveRecord::Migration
  def change
  	rename_table :portfolio, :portfolios
  end
end
