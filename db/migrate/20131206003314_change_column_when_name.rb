class ChangeColumnWhenName < ActiveRecord::Migration
def self.up
    rename_column :portfolio_elems, :when, :whens
  end
end
