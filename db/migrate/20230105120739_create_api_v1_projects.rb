class CreateApiV1Projects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.boolean :status
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
