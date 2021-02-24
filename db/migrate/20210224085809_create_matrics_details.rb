class CreateMatricsDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :matrics_details do |t|
      t.integer :year
      t.integer :wrote
      t.integer :passed
      t.belongs_to :school_detail

      t.timestamps
    end
  end
end
