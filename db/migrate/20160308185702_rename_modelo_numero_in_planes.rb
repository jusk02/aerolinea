class RenameModeloNumeroInPlanes < ActiveRecord::Migration
  def change
  	rename_column :planes, :modelo, :model
  	rename_column :planes, :numero, :number
  end
end
