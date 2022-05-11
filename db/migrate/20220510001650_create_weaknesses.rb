class CreateWeaknesses < ActiveRecord::Migration[6.1]
  def change
    create_table :weaknesses do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
