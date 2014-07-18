class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :nuts, index: true

      t.timestamps
    end
  end
end
