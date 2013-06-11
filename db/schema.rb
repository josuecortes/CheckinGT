# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130611184754) do

  create_table "aquaviario_dads", :force => true do |t|
    t.integer  "empresa_id",                :precision => 38, :scale => 0
    t.string   "porto_origem"
    t.integer  "porto_destino_id",          :precision => 38, :scale => 0
    t.string   "empurrador"
    t.string   "balsa"
    t.datetime "previsao_chegada"
    t.datetime "efetiva_chegada"
    t.integer  "usuario_id",                :precision => 38, :scale => 0
    t.integer  "usuario_alterou_id",        :precision => 38, :scale => 0
    t.integer  "status_unidade_carga_id",   :precision => 38, :scale => 0
    t.datetime "status_unidade_carga_data"
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.integer  "status_dad_id",             :precision => 38, :scale => 0
    t.integer  "status_processamento_id",   :precision => 38, :scale => 0
    t.datetime "status_dad_data"
    t.datetime "status_processamento_data"
  end

  create_table "aquaviario_dcs", :force => true do |t|
    t.integer  "dad_id",             :precision => 38, :scale => 0
    t.string   "documento"
    t.integer  "rodoviario_id",      :precision => 38, :scale => 0
    t.integer  "tipo_dc_id",         :precision => 38, :scale => 0
    t.integer  "unidade_carga_id",   :precision => 38, :scale => 0
    t.integer  "usuario_id",         :precision => 38, :scale => 0
    t.integer  "status_dc_id",       :precision => 38, :scale => 0
    t.integer  "usuario_alterou_id", :precision => 38, :scale => 0
    t.datetime "status_dc_data"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "aquaviario_unidade_cargas", :force => true do |t|
    t.integer  "dad_id",                     :precision => 38, :scale => 0
    t.integer  "tipo_unidade_id",            :precision => 38, :scale => 0
    t.string   "placa"
    t.integer  "termo_lacre_id",             :precision => 38, :scale => 0
    t.integer  "termo_vistoria_id",          :precision => 38, :scale => 0
    t.integer  "termo_fd_id",                :precision => 38, :scale => 0
    t.integer  "termo_fd_data",              :precision => 38, :scale => 0
    t.integer  "status_unidade_carga_id",    :precision => 38, :scale => 0
    t.datetime "status_unidade_carga_data"
    t.integer  "status_processamento_id",    :precision => 38, :scale => 0
    t.datetime "status_processamento_data"
    t.integer  "status_desembaraco_id",      :precision => 38, :scale => 0
    t.datetime "status_desembaraco_data"
    t.integer  "usuario_alterou_id",         :precision => 38, :scale => 0
    t.integer  "usuario_id",                 :precision => 38, :scale => 0
    t.datetime "created_at",                                                :null => false
    t.datetime "updated_at",                                                :null => false
    t.integer  "porto_destino_id",           :precision => 38, :scale => 0
    t.datetime "data_registro_entrada"
    t.datetime "status_parametrizacao_data"
    t.integer  "status_parametrizacao_id",   :precision => 38, :scale => 0
  end

  create_table "core_aquaviarios", :force => true do |t|
    t.string   "empresa_id"
    t.string   "registro_antaq"
    t.boolean  "status",         :precision => 1, :scale => 0, :default => true
    t.datetime "created_at",                                                     :null => false
    t.datetime "updated_at",                                                     :null => false
  end

  create_table "core_empresa_modulos", :force => true do |t|
    t.integer  "empresa_id", :precision => 38, :scale => 0
    t.integer  "modulo_id",  :precision => 38, :scale => 0
    t.boolean  "status",     :precision => 1,  :scale => 0, :default => true
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
  end

  create_table "core_empresas", :force => true do |t|
    t.string   "cnpj"
    t.string   "inscricao_estadual"
    t.string   "descricao"
    t.string   "endereco"
    t.integer  "uf_id",              :precision => 38, :scale => 0
    t.string   "cidade"
    t.boolean  "status",             :precision => 1,  :scale => 0, :default => true
    t.datetime "created_at",                                                          :null => false
    t.datetime "updated_at",                                                          :null => false
    t.string   "nome_fantasia"
  end

  create_table "core_fiel_depositarios", :force => true do |t|
    t.integer  "empresa_id", :precision => 38, :scale => 0
    t.string   "cpf"
    t.string   "nome"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "core_grupo_sistemas", :force => true do |t|
    t.integer  "grupo_id",   :precision => 38, :scale => 0
    t.integer  "sistema_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "core_grupos", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.boolean  "status",     :precision => 1,  :scale => 0, :default => true
    t.integer  "empresa_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
  end

  create_table "core_modulos", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.boolean  "status",     :precision => 1, :scale => 0, :default => true
    t.datetime "created_at",                                                 :null => false
    t.datetime "updated_at",                                                 :null => false
  end

  create_table "core_nota_fiscal_detalhes", :force => true do |t|
    t.integer  "dad_id",                       :precision => 38, :scale => 0
    t.integer  "unidade_carga_id",             :precision => 38, :scale => 0
    t.integer  "tipo_documento_eletronico_id", :precision => 38, :scale => 0
    t.integer  "documento_eletronico_id",      :precision => 38, :scale => 0
    t.integer  "nota_fiscal_eletronica_id",    :precision => 38, :scale => 0
    t.integer  "tipo_evento_id",               :precision => 38, :scale => 0
    t.text     "evento_descricao"
    t.integer  "evento_valor",                 :precision => 38, :scale => 0
    t.integer  "solucao_evento_tipo_id",       :precision => 38, :scale => 0
    t.string   "solucao_descricao"
    t.datetime "solucao_data"
    t.string   "usuario_fisco_cpf_id"
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
  end

  create_table "core_nota_fiscal_eletronicas", :force => true do |t|
    t.integer  "dad_id",                       :precision => 38, :scale => 0
    t.integer  "unidade_carga",                :precision => 38, :scale => 0
    t.integer  "tipo_documento_eletronico_id", :precision => 38, :scale => 0
    t.integer  "documento_eletronico_id",      :precision => 38, :scale => 0
    t.integer  "rodoviario_id",                :precision => 38, :scale => 0
    t.integer  "termo_fiel_depositario_id",    :precision => 38, :scale => 0
    t.integer  "selo_fiscal_id",               :precision => 38, :scale => 0
    t.integer  "termo_lacre_id",               :precision => 38, :scale => 0
    t.integer  "termo_vistoria",               :precision => 38, :scale => 0
    t.string   "emitente_cnpj"
    t.string   "emitente_razao"
    t.string   "destinatario_cnpj"
    t.string   "destinatario_razao"
    t.string   "destinatario_cpf"
    t.string   "destinatario_nome"
    t.string   "nota_numero"
    t.string   "nota_serie"
    t.integer  "nota_quantidade_itens",        :precision => 38, :scale => 0
    t.decimal  "valor_nota",                   :precision => 14, :scale => 2
    t.decimal  "valor_icms",                   :precision => 14, :scale => 2
    t.decimal  "valor_produtos",               :precision => 14, :scale => 2
    t.decimal  "valor_icms_st",                :precision => 14, :scale => 2
    t.datetime "data_emissao"
    t.datetime "data_registro"
    t.text     "memoria_calculo"
    t.integer  "status_desembaraco_id",        :precision => 38, :scale => 0
    t.datetime "status_desembaraco_data"
    t.integer  "usuario_id",                   :precision => 38, :scale => 0
    t.integer  "usuario_alterou_id",           :precision => 38, :scale => 0
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
    t.string   "chnfe"
  end

  create_table "core_patio_portos", :force => true do |t|
    t.integer  "empresa_id", :precision => 38, :scale => 0
    t.string   "descricao"
    t.string   "endereco"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "core_portos", :force => true do |t|
    t.integer  "empresa_id",      :precision => 38, :scale => 0
    t.string   "regsitro_imovel"
    t.string   "endereco"
    t.integer  "uf_id",           :precision => 38, :scale => 0
    t.string   "cidade"
    t.boolean  "status",          :precision => 1,  :scale => 0
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "descricao"
  end

  create_table "core_rodoviarios", :force => true do |t|
    t.integer  "empresa_id",    :precision => 38, :scale => 0
    t.string   "registro_antt"
    t.boolean  "status",        :precision => 1,  :scale => 0
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "cnpj"
  end

  create_table "core_selo_fiscals", :force => true do |t|
    t.integer  "status_selo_fiscal_tipo_id", :precision => 38, :scale => 0
    t.datetime "selo_fiscal_data"
    t.string   "descricao"
    t.datetime "created_at",                                                :null => false
    t.datetime "updated_at",                                                :null => false
  end

  create_table "core_senhas", :force => true do |t|
    t.integer  "usuario_id",         :precision => 38, :scale => 0
    t.string   "senha_encriptada"
    t.string   "chave_criptografia"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "core_sistemas", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.string   "apelido"
    t.string   "url"
    t.string   "controlador"
    t.string   "icone"
    t.boolean  "status",      :precision => 1,  :scale => 0, :default => true
    t.integer  "modulo_id",   :precision => 38, :scale => 0
    t.datetime "created_at",                                                   :null => false
    t.datetime "updated_at",                                                   :null => false
  end

  create_table "core_status_dads", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_status_desembaracos", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_status_parametrizacaos", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_status_processamentos", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_status_selo_fiscal_tipos", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_status_termo_fds", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_status_unidade_cargas", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_termo_fds", :force => true do |t|
    t.integer  "rodoviario_id",               :precision => 38, :scale => 0
    t.integer  "rodoviario_usuario_id",       :precision => 38, :scale => 0
    t.datetime "rodoviario_data_autorizacao"
    t.integer  "fisco_usuario_id",            :precision => 38, :scale => 0
    t.datetime "fisco_data_autorizacao"
    t.integer  "porto_usuario_id",            :precision => 38, :scale => 0
    t.datetime "porto_data_autorizacao"
    t.integer  "status_termo_fd_id",          :precision => 38, :scale => 0
    t.integer  "fisco_fechamento_usuario_id", :precision => 38, :scale => 0
    t.text     "fechamento_descricao"
    t.datetime "fechamento_data"
    t.datetime "created_at",                                                 :null => false
    t.datetime "updated_at",                                                 :null => false
  end

  create_table "core_termo_lacres", :force => true do |t|
    t.integer  "dad_id",             :precision => 38, :scale => 0
    t.integer  "unidade_carga_id",   :precision => 38, :scale => 0
    t.integer  "fisco_cpf_id",       :precision => 38, :scale => 0
    t.datetime "termo_lacre_data"
    t.string   "termo_lacre_numero"
    t.string   "observacoes"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "core_termo_vistoria", :force => true do |t|
    t.integer  "dad_id",                     :precision => 38, :scale => 0
    t.integer  "unidade_carga_id",           :precision => 38, :scale => 0
    t.datetime "termo_vistoria_data_inicio"
    t.datetime "termo_vistoria_data_final"
    t.string   "observacoes"
    t.string   "termo_contagem"
    t.datetime "created_at",                                                :null => false
    t.datetime "updated_at",                                                :null => false
  end

  create_table "core_termo_vistoria_detalhes", :force => true do |t|
    t.integer  "termo_vistoria_id",              :precision => 38, :scale => 0
    t.integer  "termo_vistoria_tipo_detalhe_id", :precision => 38, :scale => 0
    t.decimal  "valor_devido",                   :precision => 14, :scale => 2
    t.text     "observacoes"
    t.datetime "created_at",                                                    :null => false
    t.datetime "updated_at",                                                    :null => false
  end

  create_table "core_tipo_dcs", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_tipo_detalhes", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_tipo_eventos", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_tipo_unidades", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_ufs", :force => true do |t|
    t.string   "sigla"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_usuario_grupos", :force => true do |t|
    t.integer  "usuario_id", :precision => 38, :scale => 0
    t.integer  "grupo_id",   :precision => 38, :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "core_usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "login"
    t.string   "email"
    t.boolean  "status",            :precision => 1,  :scale => 0, :default => true
    t.boolean  "mudarsenha",        :precision => 1,  :scale => 0, :default => true
    t.integer  "numlogin",          :precision => 38, :scale => 0
    t.datetime "ultimadataacesso"
    t.datetime "correntedatalogin"
    t.datetime "ultimadatalogin"
    t.string   "correnteloginip"
    t.string   "ultimologinip"
    t.integer  "empresa_id",        :precision => 38, :scale => 0
    t.string   "cpf"
    t.boolean  "master",            :precision => 1,  :scale => 0
    t.datetime "created_at",                                                         :null => false
    t.datetime "updated_at",                                                         :null => false
  end

end
