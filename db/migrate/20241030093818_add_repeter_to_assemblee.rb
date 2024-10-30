class AddRepeterToAssemblee < ActiveRecord::Migration[7.1]
  def change
    add_column :assemblees, :repeter, :boolean
    add_column :assemblees, :repeter_lun, :boolean
    add_column :assemblees, :repeter_mar, :boolean
    add_column :assemblees, :repeter_mer, :boolean
    add_column :assemblees, :repeter_jeu, :boolean
    add_column :assemblees, :repeter_ven, :boolean
    add_column :assemblees, :repeter_sam, :boolean
    add_column :assemblees, :repeter_dim, :boolean
    add_column :assemblees, :fin_repeter, :datetime
  end
end
