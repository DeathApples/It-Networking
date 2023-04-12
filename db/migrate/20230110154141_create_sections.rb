class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.references :chapter, null: false, foreign_key: true
      t.text :content
      t.boolean :is_title
      t.boolean :is_code
      t.boolean :is_list

      t.timestamps
    end
  end
end
