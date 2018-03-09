class CreateContractors < ActiveRecord::Migration[5.1]
  def change
    create_table :contractors do |t|
      t.string :first_name
      t.string :last_name
      t.date :born_on
      t.string :gender
      t.date :hire_date

      t.timestamps
    end
  end
end
