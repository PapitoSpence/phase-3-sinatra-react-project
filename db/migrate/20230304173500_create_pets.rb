class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :description
      t.string :breed
      t.string :status
      t.string :image
      t.integer :user_id
    end
  end
end
