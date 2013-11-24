class AlterPicsAddImage < ActiveRecord::Migration
  def change

	add_column :pics, :image, :string


  end
end
