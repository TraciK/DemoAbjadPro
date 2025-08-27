class CreateArabicLetters < ActiveRecord::Migration[7.0]
  def change
    create_table :arabic_letters do |t|
      t.string :letter, null: false
      t.string :transliteration, null: false
      t.string :name, null: false
      t.string :initial_form
      t.string :medial_form
      t.string :final_form
      t.string :isolated_form
      t.text :pronunciation_guide
      t.integer :difficulty_level, default: 1
      
      t.timestamps
    end
    
    add_index :arabic_letters, :letter, unique: true
    add_index :arabic_letters, :difficulty_level
  end
end
