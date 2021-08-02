class CreateMnesajes < ActiveRecord::Migration[6.1]
  def change
    create_table :mnesajes do |t|
      t.string :autor
      t.text :mensaje
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
