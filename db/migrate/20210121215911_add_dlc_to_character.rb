class AddDlcToCharacter < ActiveRecord::Migration[6.1]
  def change
    add_reference :characters, :dlcs, index: true
  end
end
