class CreateSchoolDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :school_details do |t|
      t.string :name
      t.bigint :centre_no
      t.bigint :emis

      t.timestamps
    end
  end
end
