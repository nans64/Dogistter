class ChangeColumnCityName < ActiveRecord::Migration[5.2]
  def change
    rename_column :cities, :City_name, :city_name
    rename_column :dogs, :first_name, :dog_name

  end
end
