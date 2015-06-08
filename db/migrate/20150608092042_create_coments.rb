class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.string :title
      t.text :message

      t.timestamps null: false
    end
  end
end
