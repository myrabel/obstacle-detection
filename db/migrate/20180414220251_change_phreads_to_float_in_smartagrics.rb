class ChangePhreadsToFloatInSmartagrics < ActiveRecord::Migration[5.1]
  def change
    change_column :smartagrics, :phreads, :float
  end
end
