class AddCitytoDogAndDogsitters < ActiveRecord::Migration[5.2]
  def change

    change_table :dogs do |t|
      t.belongs_to :city, index: true
    end

  end

  def change

    change_table :dogsitters do |t|
      t.belongs_to :city, index: true
    end

  end
end
