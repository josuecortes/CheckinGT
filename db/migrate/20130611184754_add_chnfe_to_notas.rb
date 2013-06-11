class AddChnfeToNotas < ActiveRecord::Migration
  def change
    add_column :core_nota_fiscal_eletronicas, :CHNFE, :string
  end
end
