class AddDescriptionToCharacter < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :description, :text
  end
end
