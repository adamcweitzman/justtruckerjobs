class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :location
      t.string :blurb
      t.string :pay
      t.string :time
      t.string :description

      t.timestamps
    end
  end
end
