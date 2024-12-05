class CreateItems < ActiveRecord::Migration[7.2]
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :show_modal
      t.string :fiel1
      t.string :field2

      t.timestamps
    end
  end
end
