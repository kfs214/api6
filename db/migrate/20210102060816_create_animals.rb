class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :name, null: false
      t.string :t12, null: false
      t.string :t3, null: false
      t.integer :t4, null: false
      t.string :rhythm, null: false
      t.integer :wangel, null: false
      t.integer :bdebil, null: false
      
      t.timestamps
    end
  end
end
