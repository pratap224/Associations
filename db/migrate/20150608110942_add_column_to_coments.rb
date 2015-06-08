class AddColumnToComents < ActiveRecord::Migration
  def change
    add_column :coments, :post_id, :integer
  end
end
