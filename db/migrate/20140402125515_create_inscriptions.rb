class CreateInscriptions < ActiveRecord::Migration
  def change
    create_table :inscriptions do |t|
      t.string :name
      t.string :firstname
      t.string :email
      t.string :profession
      t.text :street
      t.string :zipcode
      t.string :town

      t.timestamps
    end
  end
end
