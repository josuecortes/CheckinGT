class CreateCoreNotaFiscalDetalhes < ActiveRecord::Migration
  def change
    create_table :core_nota_fiscal_detalhes do |t|
      t.integer :dad_id
      t.integer :unidade_carga_id
      t.integer :tipo_documento_eletronico_id
      t.integer :documento_eletronico_id
      t.integer :nota_fiscal_eletronica_id
      t.integer :tipo_evento_id
      t.text :evento_descricao
      t.integer :evento_valor
      t.integer :solucao_evento_tipo_id
      t.string :solucao_descricao
      t.datetime :solucao_data
      t.string :usuario_fisco_cpf_id

      t.timestamps
    end
  end
end
