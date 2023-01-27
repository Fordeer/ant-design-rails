class CreateRuleListItems < ActiveRecord::Migration[7.0]
  def change
    create_table :rule_list_items do |t|
      t.boolean :disabled
      t.string :href
      t.string :avatar
      t.string :name
      t.string :owner
      t.string :desc
      t.integer :call_no
      t.integer :status
      t.integer :progress
      t.timestamps
    end
  end
end
