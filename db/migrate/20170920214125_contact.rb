class Contact < ActiveRecord::Migration[5.1]
  def change
  	create_table :conatcts do |t|
  		t.string :name
  		t.string :email
  		t.text :message

  		t.timestamps
 end 
  end
end
