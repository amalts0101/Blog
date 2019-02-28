class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :job_title, :string
    add_column :users, :level_of_excellence, :string
  end
end
