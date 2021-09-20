class CreateJoinTableOwnerPet < ActiveRecord::Migration[6.0]
  def change
    create_join_table :owners, :pets do |t|
      t.index :owner_id
      t.index :pet_id
    end
  end
end
