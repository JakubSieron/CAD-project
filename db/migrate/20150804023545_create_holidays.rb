class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.string :name
      t.string :employeeid
      t.text :address
      t.string :phone
      t.string :email
      t.string :position
      t.date :from
      t.date :to
      t.date :submited

      t.timestamps
    end
  end
end
