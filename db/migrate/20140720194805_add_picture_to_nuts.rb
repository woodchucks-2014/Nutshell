class AddPictureToNuts < ActiveRecord::Migration
  def change
    add_column :nuts, :picture, :string
  end
end
