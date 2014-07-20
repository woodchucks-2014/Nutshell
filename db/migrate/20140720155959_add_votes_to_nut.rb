class AddVotesToNut < ActiveRecord::Migration
  def change
    add_column :nuts, :votes, :int, :default => 0
  end
end
