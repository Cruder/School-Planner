# frozen_string_literal: true

class CreateDisciplines < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplines do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
