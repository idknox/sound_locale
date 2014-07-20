class UsersVenues < ActiveRecord::Migration
  def up
    create_table :venues do |t|
      t.string :title
      t.string :position
      t.string :icon
      t.string :marker_name
      t.string :address
      t.string :size
      t.string :description
      t.string :price
      t.string :map
    end

    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.date :birthday
      t.date :join_date
    end

    def down
      drop_table :users
      drop_table :venues
    end
  end
end
