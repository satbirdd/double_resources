class CreateTempaltes < ActiveRecord::Migration
  def change
    create_table :tempaltes do |t|
      t.text :description
      t.string :name
      t.string :filename

      t.timestamps null: false
    end
  end
end
