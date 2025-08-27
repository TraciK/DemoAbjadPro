class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest
      t.integer :current_level, default: 1
      t.integer :total_score, default: 0
      
      t.timestamps
    end
    
    add_index :users, :email, unique: true
  end
end
