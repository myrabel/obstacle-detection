class CreateSmartagrics < ActiveRecord::Migration[5.1]
  def change
    create_table :smartagrics do |t|
      t.integer :mositurereads
      t.integer :phreads

      t.timestamps
    end
  end
end
