class CreateMonsters < ActiveRecord::Migration[7.0]
  def change
    create_table :monsters do |t|
      t.string :imageUrl
      t.integer :attack
      t.integer :defense
      t.integer :hp
      t.integer :speed

      t.timestamps
    end
  end
end

# instead of editing and erasing the database which i should do,
# we will edit the existing migration, drop the db and then seed it
