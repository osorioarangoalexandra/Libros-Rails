class AddCityToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :phone, :integer
  end
end
