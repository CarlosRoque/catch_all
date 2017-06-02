class ChangeRequestLog < ActiveRecord::Migration
  def up
      remove_column :request_logs, :source
      add_column :request_logs, :requested_path, :string
      remove_column :request_logs, :raw
      add_column :request_logs, :body, :text
  end

  def down
      remove_column :request_logs, :requested_path
      add_column :request_logs, :source, :string
      remove_column :request_logs, :body
      add_column :request_logs, :raw, :text
  end
end
