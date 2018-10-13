# frozen_string_literal: true

class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.belongs_to :discipline
      t.string :title
      t.text :description
      t.datetime :due_to
      t.timestamps
    end
  end
end
