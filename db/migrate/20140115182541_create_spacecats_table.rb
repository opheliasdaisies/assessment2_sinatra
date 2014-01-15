class CreateSpacecatsTable < ActiveRecord::Migration
  def change
    create_table :spacecats do |t|
      t.string :name
      t.string :home_planet
      t.string :tagline
      t.string :superpower
    end
  end
end
