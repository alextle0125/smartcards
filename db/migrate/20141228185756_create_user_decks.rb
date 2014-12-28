class CreateUserDecks < ActiveRecord::Migration
  def change
    create_table :user_decks do |t|
      t.belongs_to :deck
      t.belongs_to :user
      t.timestamps
    end
  end
end
