class CreateInvestigators < ActiveRecord::Migration[6.1]
  def change
    create_table :investigators do |t|
      t.string :name
      t.string :image
      t.string :deck_link
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
