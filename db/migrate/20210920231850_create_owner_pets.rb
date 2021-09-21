class CreateOwnerPets < ActiveRecord::Migration[6.0]
  def change
    create_table :owner_pets do |t|
      t.integer :owner_id
      t.integer :pet_id

      t.timestamps
    end
  end
end
