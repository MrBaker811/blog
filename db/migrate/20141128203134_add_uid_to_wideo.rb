class AddUidToWideo < ActiveRecord::Migration
  def change
    add_column :wideos, :uid, :string
  end
end
