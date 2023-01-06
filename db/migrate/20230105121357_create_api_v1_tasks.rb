class CreateApiV1Tasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :status
      t.datetime :start_date
      t.datetime :end_date
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
