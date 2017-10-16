class CreateHistograms < ActiveRecord::Migration
  def change
    create_table :histograms do |t|
      t.integer :bound

      t.timestamps null: false
    end
  end
end
