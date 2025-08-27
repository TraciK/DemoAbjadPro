class CreateUserResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_responses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :arabic_letter, null: false, foreign_key: true
      t.references :study_session, foreign_key: true
      t.string :response, null: false
      t.boolean :correct, null: false
      t.integer :response_time_ms
      
      t.timestamps
    end
  end
end
