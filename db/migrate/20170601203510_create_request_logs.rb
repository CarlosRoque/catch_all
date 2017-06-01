class CreateRequestLogs < ActiveRecord::Migration
  def change
    create_table :request_logs do |t|
      t.text :raw
      t.string :source

      t.timestamps null: false
    end
  end
end
