class CreateNut < ActiveRecord::Migration
  def change
    create_table :nuts do |t|
      t.text :content
      t.string :url
      t.belongs_to :user

      t.timestamps
    end
  end
end
