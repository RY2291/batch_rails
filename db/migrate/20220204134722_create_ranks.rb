class CreateRanks < ActiveRecord::Migration[6.0]
  def change
    create_table :ranks do |t|
      t.references :user, null: false, index: { unique: true }, foreign_key: { on_delete: :restrict, on_update: :restrict}
      t.integer :rank, null: false, default: 0, index: true
      t.integer :score, null: false, default: 0

      t.timestamps
    end
  end
end
