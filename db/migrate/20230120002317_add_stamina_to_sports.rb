class AddStaminaToSports < ActiveRecord::Migration[7.0]
  def change
    add_column :sports, :stamina, :integer
    add_column :sports, :power, :integer
    add_column :sports, :effort, :integer
    add_column :sports, :coordination, :integer
    add_column :sports, :physical_contact, :integer
  end
end
