class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string  :f_name
      t.string  :l_name
      t.date    :date_of_birth
      t.integer :salary
      t.string  :highest_completed_education

      t.timestamps
    end
  end
end
