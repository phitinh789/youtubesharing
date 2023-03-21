class ChangeColumnDescVideo < ActiveRecord::Migration[5.2]
  def change
    change_column :videos, :desc, :text
  end
end
