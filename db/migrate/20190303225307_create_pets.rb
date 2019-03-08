class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.string :sex
      t.string :birthDate
      t.string :lastWalDate
      t.string :lastBathDate
      t.string :lastVetDate

      t.timestamps
    end
  end
end
