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

ActiveRecord::Schema.define(:version => 20130527203701) do

  create_table "aquaviario_dads", :force => true do |t|
    t.integer  "empresa_id"
    t.string   "porto_origem"
    t.integer  "porto_destino_id"
    t.string   "empurrador"
    t.string   "balsa"
    t.datetime "previsao_chegada"
    t.datetime "efetiva_chegada"
    t.integer  "usuario_id"
    t.integer  "usuario_alterou_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "status_dad_id"
    t.integer  "status_processamento_id"
    t.datetime "status_dad_data"
    t.datetime "status_processamento_data"
  end

  create_table "aquaviario_documento_eletronicos", :force => true do |t|
    t.integer  "dad_id"
    t.integer  "unidade_carga_id"
    t.integer  "tipo_documento_eletronico_id"
    t.integer  "rodoviario_id"
    t.string   "documento"
    t.integer  "usuario_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "aquaviario_unidade_cargas", :force => true do |t|
    t.integer  "dad_id"
    t.integer  "tipo_unidade_id"
    t.string   "placa"
    t.integer  "termo_lacre_id"
    t.integer  "termo_vistoria_id"
    t.integer  "termo_fiel_depositario_id"
    t.integer  "termo_fiel_depositario_data"
    t.integer  "status_unidade_carga_id"
    t.datetime "status_unidade_carga_data"
    t.integer  "status_processamento_id"
    t.datetime "status_processamento_data"
    t.integer  "status_desembaraco_id"
    t.datetime "status_desembaraco_data"
    t.integer  "usuario_alterou_id"
    t.integer  "usuario_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "core_aquaviarios", :force => true do |t|
    t.string   "empresa_id"
    t.string   "registro_antaq"
    t.boolean  "status",         :default => true
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "core_empresa_modulos", :force => true do |t|
    t.integer  "empresa_id"
    t.integer  "modulo_id"
    t.boolean  "status",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "core_empresas", :force => true do |t|
    t.string   "cnpj"
    t.string   "inscricao_estadual"
    t.string   "descricao"
    t.string   "endereco"
    t.integer  "uf_id"
    t.string   "cidade"
    t.boolean  "status",             :default => true
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "core_fiel_depositarios", :force => true do |t|
    t.integer  "empresa_id"
    t.string   "cpf"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_grupo_sistemas", :force => true do |t|
    t.integer  "grupo_id"
    t.integer  "sistema_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_grupos", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.boolean  "status",     :default => true
    t.integer  "empresa_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "core_modulos", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.boolean  "status",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "core_portos", :force => true do |t|
    t.integer  "empresa_id"
    t.string   "regsitro_imovel"
    t.string   "endereco"
    t.integer  "uf_id"
    t.string   "cidade"
    t.boolean  "status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "descricao"
  end

  create_table "core_rodoviarios", :force => true do |t|
    t.integer  "empresa_id"
    t.string   "registro_antt"
    t.boolean  "status"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "core_selo_fiscals", :force => true do |t|
    t.integer  "status_selo_fiscal_tipo_id"
    t.datetime "selo_fiscal_data"
    t.string   "descricao"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "core_senhas", :force => true do |t|
    t.integer  "usuario_id"
    t.string   "senha_encriptada"
    t.string   "chave_criptografia"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "core_sistemas", :force => true do |t|
    t.string   "nome"
    t.string   "sigla"
    t.string   "apelido"
    t.string   "url"
    t.string   "controlador"
    t.string   "icone"
    t.boolean  "status",      :default => true
    t.integer  "modulo_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
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

  create_table "core_status_termo_fiel_depositarios", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_status_unidade_cargas", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_termo_fiel_depositarios", :force => true do |t|
    t.integer  "rodoviario_id"
    t.integer  "rodoviario_usuario_id"
    t.datetime "rodoviario_data_autorizacao"
    t.integer  "fisco_usuario_id"
    t.datetime "fisco_data_autorizacao"
    t.integer  "porto_usuario_id"
    t.datetime "porto_data_autorizacao"
    t.integer  "status_termo_fiel_depositario_id"
    t.integer  "fisco_fechamento_usuario_id"
    t.text     "fechamento_descricao"
    t.datetime "fechamento_data"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "core_termo_lacres", :force => true do |t|
    t.integer  "dad_id"
    t.integer  "unidade_carga_id"
    t.integer  "fisco_cpf_id"
    t.datetime "termo_lacre_data"
    t.string   "termo_lacre_numero"
    t.string   "observacoes"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "core_termo_vistoria", :force => true do |t|
    t.integer  "dad_id"
    t.integer  "unidade_carga_id"
    t.datetime "termo_vistoria_data_inicio"
    t.datetime "termo_vistoria_data_final"
    t.string   "observacoes"
    t.string   "termo_contagem"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "core_termo_vistoria_detalhes", :force => true do |t|
    t.integer  "termo_vistoria_id"
    t.integer  "termo_vistoria_tipo_detalhe_id"
    t.decimal  "valor_devido",                   :precision => 14, :scale => 2
    t.text     "observacoes"
    t.datetime "created_at",                                                    :null => false
    t.datetime "updated_at",                                                    :null => false
  end

  create_table "core_tipo_detalhes", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_tipo_documento_eletronicos", :force => true do |t|
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
    t.integer  "usuario_id"
    t.integer  "grupo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "core_usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "login"
    t.string   "email"
    t.boolean  "status",            :default => true
    t.boolean  "mudarsenha",        :default => true
    t.integer  "numlogin"
    t.datetime "ultimadataacesso"
    t.datetime "correntedatalogin"
    t.datetime "ultimadatalogin"
    t.string   "correnteloginip"
    t.string   "ultimologinip"
    t.integer  "empresa_id"
    t.string   "cpf"
    t.boolean  "master"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

end
