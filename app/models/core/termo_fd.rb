class Core::TermoFd < ActiveRecord::Base
  attr_accessible :fechamento_data, :fechamento_descricao, :fisco_data_autorizacao, :fisco_fechamento_usuario_id, :fisco_usuario_id, :porto_data_autorizacao, :porto_usuario_id, :rodoviario_data_autorizacao, :rodoviario_id, :rodoviario_usuario_id, :status_termo_fiel_depositario_id
end
