class CreateCoreNotaFiscalEletronicas < ActiveRecord::Migration
  def change
    create_table :core_nota_fiscal_eletronicas do |t|
      t.integer :dad_id
      t.integer :unidade_carga
      t.integer :tipo_documento_eletronico_id
      t.integer :documento_eletronico_id
      t.integer :rodoviario_id
      t.integer :termo_fiel_depositario_id
      t.integer :selo_fiscal_id
      t.integer :termo_lacre_id
      t.integer :termo_vistoria
      t.string :emitente_cnpj
      t.string :emitente_razao
      t.string :destinatario_cnpj
      t.string :destinatario_razao
      t.string :destinatario_cpf
      t.string :destinatario_nome
      t.string :nota_numero
      t.string :nota_serie
      t.integer :nota_quantidade_itens
      t.decimal :valor_nota, :precision => 14, :scale => 2
      t.decimal :valor_icms, :precision => 14, :scale => 2
      t.decimal :valor_produtos, :precision => 14, :scale => 2
      t.decimal :valor_icms_st, :precision => 14, :scale => 2
      t.datetime :data_emissao
      t.datetime :data_registro
      t.text :memoria_calculo
      t.integer :status_desembaraco_id
      t.datetime :status_desembaraco_data
      t.integer :usuario_id
      t.integer :usuario_alterou_id

      t.timestamps
    end
  end
end
