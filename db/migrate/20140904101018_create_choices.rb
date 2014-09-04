class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.text :content
      t.integer :tally, default: 0
      t.belongs_to :question
      t.timestamps
    end
  end
end
