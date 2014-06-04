class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :title

      t.timestamps
    end
  end
end
