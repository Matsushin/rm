class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.float :value
      t.integer :repeat_count

      t.timestamps null: false
    end
  end
end
