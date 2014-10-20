class AddNeedLoginToPages < ActiveRecord::Migration
  def change
    add_column :refinery_pages, :need_login, :boolean, :default => false
  end
end
