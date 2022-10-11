class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :pack_name
      t.string :type_code
      t.string :type_name
      t.string :subtype_code
      t.string :faction_name
      t.integer :code
      t.string :name
      t.string :subname
      t.string :text
      t.integer :quantity
      t.integer :deck_limit
      t.string :traits
      t.string :flavor
      t.boolean :permanent
      t.boolean :double_sided
      t.string :back_text
      t.string :back_flavor
      t.string :imagesrc
      t.string :backimagesrc

      t.timestamps
    end
  end
end
