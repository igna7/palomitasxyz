class CreateDescargas < ActiveRecord::Migration
  def change
    create_table :descargas do |t|
      t.string :link
      t.belongs_to :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
