class CreateNuts < ActiveRecord::Migration
  def change
    create_table :nuts do |t|
      t.belongs_to :user, index: true
      t.text :content
      t.string :image
      t.integer :votes

      t.timestamps
    end
  end
end
