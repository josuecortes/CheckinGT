class Core::EmpresaModulo < ActiveRecord::Base
  attr_accessible :empresa_id, :modulo_id, :status
  
  belongs_to :empresa, :class_name=>"Core::Empresa"
  belongs_to :modulo, :class_name=>"Core::Modulo"
  
  validates_uniqueness_of :modulo_id, :scope => [:empresa_id]
      
  after_save :atualiza_grupo_administrador
  
  def atualiza_grupo_administrador
  
  	g = Core::Grupo.find_or_create_by_nome_and_empresa_id(:nome=>"Administrador", :sigla=>"AdmEmp", :empresa_id=>self.empresa_id, :status=>true) 
  	
    self.empresa.modulos.each do |modulo|
    	modulo.sistemas.each do |s|
    		Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s.id)		
    	end
    end
  
  end
  
end
