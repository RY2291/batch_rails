class CreateUserScores < ActiveRecord::Migration[6.0]
  def change
    create_table :user_scores do |t|
      t.references :user, null: false, index: true, foreign_key: { on_delete: :cascade, on_update: :cascade}
      t.integer :score, null: false, default: 0
      t.datetime :recived_at, null: false, index: true

      t.timestamps
    end
  end
end
