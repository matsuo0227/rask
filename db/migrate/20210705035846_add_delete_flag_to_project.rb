class AddDeleteFlagToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :done_flag, :boolean, :default => false
  end
end
