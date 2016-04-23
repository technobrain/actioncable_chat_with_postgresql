class CreateWhispers < ActiveRecord::Migration[5.0]
  def change
    create_table :whispers do |t|
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
