class AddPrefectureToTokoLogs < ActiveRecord::Migration[7.0]
  def change
    add_column :toko_logs, :prefecture, :integer, default: 0, null: false
  end
end
