class CreateSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :submissions do |t|
      t.string :title
      t.string :url
      t.references :community, null: false, foreign_key: true

      t.timestamps
    end
  end
end
