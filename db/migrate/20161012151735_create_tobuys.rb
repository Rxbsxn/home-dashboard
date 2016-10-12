class CreateTobuys < ActiveRecord::Migration[5.0]
  def change
    create_table :tobuys do |t|
      t.text :name
      t.integer :quantity

      t.timestamps
    end
  end
end
