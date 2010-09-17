class CreateRefactorings < ActiveRecord::Migration
  def self.up
    create_table :refactorings do |t|
      t.text :description
      t.text :code
      t.integer :user_id
      t.integer :post_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :refactorings
  end
end
