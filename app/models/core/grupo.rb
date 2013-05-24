class Core::Grupo < ActiveRecord::Base
  #accessiblesss
  attr_accessible :nome, :sigla, :status, :empresa_id

  #relacionamentos
  has_many :usuario_grupos, :class_name=>"Core::UsuarioGrupo"
  has_many :usuarios, :through=>:usuario_grupos, :class_name=>"Core::Usuario"

  has_many :grupo_sistemas, :class_name=>"Core::GrupoSistema"
  has_many :sistemas, :through=>:grupo_sistemas, :class_name=>"Core::Sistema"

  belongs_to :empresa, :class_name=>"Core::Empresa"

  #validações
  validates_presence_of :nome
  validates_presence_of :sigla
  
  validates_uniqueness_of :nome, :scope => [:empresa_id]

  scope :da_empresa, lambda {|id| {:conditions=>['empresa_id = ?', id]}}

end
