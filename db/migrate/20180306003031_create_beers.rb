class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :beer_type

      t.timestamps
    end
  end
end
