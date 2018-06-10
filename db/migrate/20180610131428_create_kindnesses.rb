class CreateKindnesses < ActiveRecord::Migration
  def change
    create_table :kindnesses do |t|
      t.text :act
      t.references :friend, index: true, foreign_key: true
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
