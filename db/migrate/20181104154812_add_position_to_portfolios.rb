class AddPositionToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :position, :string
    add_column :portfolios, :integer, :string
  end
end
