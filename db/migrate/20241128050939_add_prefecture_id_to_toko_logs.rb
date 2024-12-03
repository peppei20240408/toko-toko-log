class AddPrefectureIdToTokoLogs < ActiveRecord::Migration[7.0]
  def change
    remove_column :toko_logs, :prefecture, :integer

    add_column :toko_logs, :prefecture_id, :integer, null: false, default: 0
    add_index :toko_logs, :prefecture_id
  end
end
