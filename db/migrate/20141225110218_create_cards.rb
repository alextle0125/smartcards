class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :question
      t.string :answer
      t.string :option, :null => false
      t.integer :num_corr, :default => 0
      t.integer :num_shown, :default => 0
      t.float :ratio, :default => 0
      t.belongs_to :deck
      t.timestamps
    end
  end
end
