class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.string :oldurl
      t.string :newurl
      t.integer :count

      t.timestamps
    end
  end
end
