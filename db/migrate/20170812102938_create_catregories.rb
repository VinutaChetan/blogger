class CreateCatregories < ActiveRecord::Migration
  def change
    create_table :catregories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
