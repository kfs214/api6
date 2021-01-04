class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name, default: 'no name'
      t.date :birthday, null: false
      t.references :animal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
