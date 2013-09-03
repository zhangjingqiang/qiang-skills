class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :category_id
      t.string :name
      t.text :description
      t.integer :position
      t.string :level

      t.timestamps
    end
  end
end
