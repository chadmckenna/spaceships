class CreateSpaceships < ActiveRecord::Migration
  def self.up
    create_table :spaceships do |t|
      t.string :name
      t.string :ship_class
      t.string :purpose
      t.string :weapons
      t.integer :number_of_crew_members
      t.string :flight_plans
      t.timestamps
    end
  end

  def self.down
    drop_table :spaceships
  end
end
