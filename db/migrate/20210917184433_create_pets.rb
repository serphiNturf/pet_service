# frozen_string_literal: true

# This migration creates the Pet model
class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :gender
      t.string :species

      t.timestamps
    end
  end
end
