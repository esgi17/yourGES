class CreateClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :classes do |t|
      t.string :name
      t.integer :nbstudents
      t.integer :number
    end
  end
end
