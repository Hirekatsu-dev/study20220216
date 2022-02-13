class User < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :age, null: false, default: 0
      t.string :profile
      t.timestamps
    end
  end
end
