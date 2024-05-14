class CreateFighter < ActiveRecord::Migration[7.1]
  def change
    create_table :fighters do |t|
      t.string :name
      t.integer :age
      t.text :style
      t.boolean :active

      t.timestamps
    end
  end
end
