class CreateBasicForms < ActiveRecord::Migration[7.0]
  def change
    create_table :basic_forms do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.text :goal
      t.text :standard
      t.string :client
      t.string :invites
      t.integer :weight
      t.integer :public_type
      t.integer :public_users
      t.timestamps
    end
  end
end
