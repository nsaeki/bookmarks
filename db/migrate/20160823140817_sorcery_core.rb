class SorceryCore < ActiveRecord::Migration
  def change
    change_column_null :users, :email, null: false
    remove_column :users, :name
    change_table :users do |t|
      t.string :crypted_password
      t.string :salt
    end
  end
end
