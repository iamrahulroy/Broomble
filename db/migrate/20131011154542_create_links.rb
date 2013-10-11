class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
    	# Rails expects foreign keys to end with _id and begin
    	# with the model name it is referencing. Hence, user_id
    	t.integer :user_id
    	t.string :url
    	#t.string :title

      t.timestamps
    end
  end
end
