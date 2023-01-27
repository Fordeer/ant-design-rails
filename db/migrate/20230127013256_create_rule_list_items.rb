class CreateRuleListItems < ActiveRecord::Migration[7.0]
  def change
    create_table :rule_list_items do |t|
      t.boolean :disabled, null: false
      t.string :href, null: false
      t.string :avatar, null: false
      t.string :name, null: false
      t.string :owner, null: false
      t.string :desc, null: false
      t.integer :call_no, null: false
      t.integer :status, null: false
      t.integer :progress, null: false
      t.timestamps
    end
  end
end
