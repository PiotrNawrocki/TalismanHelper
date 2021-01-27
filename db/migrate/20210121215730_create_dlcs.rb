class CreateDlcs < ActiveRecord::Migration[6.1]
  def change
    create_table :dlcs do |t|
      t.string :name
      t.timestamps
    end
  end
end
