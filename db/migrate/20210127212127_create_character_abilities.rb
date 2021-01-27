class CreateCharacterAbilities < ActiveRecord::Migration[6.1]
  def change
    create_table :character_abilities do |t|
      t.references :characters
      t.references :abilities
      t.timestamps
    end
  end
end
