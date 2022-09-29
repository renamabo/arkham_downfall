# frozen_string_literal: true

class CreateInvestigatorWeaknesses < ActiveRecord::Migration[6.1]
  def change
    create_table :investigator_weaknesses do |t|
      t.references :investigator, null: false, foreign_key: true
      t.references :weakness, null: false, foreign_key: true
      t.string :quote

      t.timestamps
    end
  end
end
