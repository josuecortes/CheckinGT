class Core::Empresa < ActiveRecord::Base
  attr_accessible :cidade, :cnpj, :descricao, :endereco, :inscricao_estadual, :uf_id
  
  belongs_to :uf, :class_name=>"Core::Uf"
  has_many :usuarios, :class_name=>"Core::Usuario"
  has_many :empresa_modulos, :class_name=>"Core::EmpresaModulo"
  has_many :modulos, :through=>:empresa_modulos, :class_name=>"Core::Modulo"
  has_one :aquaviario, :class_name=>"Core::Aquaviario"
  has_many :grupos, :class_name=>"Core::Grupo"
  has_many :portos, :class_name=>"Core::Porto"
  has_many :dads, :class_name=>"Aquaviario::Dad"
    
  validates_presence_of :cidade, :cnpj, :endereco, :inscricao_estadual, :uf_id
  validates_uniqueness_of :cnpj, :inscricao_estadual
    
 
	after_create :cria_grupos_padrao
	
	scope :da_empresa, lambda {|id| {:conditions=>['empresa_id = ?', id]}}		
	
	def cria_grupos_padrao
		
		g = Core::Grupo.find_or_create_by_nome_and_empresa_id(:nome=>"Administrador", :sigla=>"AdmEmp", :empresa_id=>self.id, :status=>true) 
  	
    self.modulos.each do |modulo|
    	modulo.sistemas.each do |s|
    		Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s.id)		
    	end
    end
  	  	
	end
  
end
