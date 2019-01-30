class CreateHostsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :location
      t.string :description
      t.float :base_price
      t.text :url
    end
  end
end
