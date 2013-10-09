class CreateUsers < ActiveRecord::Migration
	attr_accessible :email, :username
  def change
    create_table :users do |t|
    	t.string :email
    	t.string :username

      t.timestamps
    end
  end
end
