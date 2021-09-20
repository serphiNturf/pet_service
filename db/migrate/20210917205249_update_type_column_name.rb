class UpdateTypeColumnName < ActiveRecord::Migration[6.0]
  def change
    change_table :pets do |t|
      t.rename :type, :species
    end
  end
end
