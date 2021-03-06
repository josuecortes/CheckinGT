class Core::Usuario < ActiveRecord::Base
  #accessibles
  attr_accessible :email, :email_confirmation, :mudarsenha, :nome, :numlogin, :status, :empresa_id,
  								:cpf, :master

  attr_accessor :email_confirmation
  #precisa disto para acessar o avatar com o plugin paperclip
  #apaguei o avatar
  #has_attached_file :avatar, :styles => { :medium => "300x300", :thumb => "100x100" }
	
	scope :master, {:conditions=>['master = ?', true]}
	
  #relacionamentos
  belongs_to :empresa, :class_name=>"Core::Empresa"

  has_one :senha, :class_name=>"Core::Senha"
  has_many :usuario_grupos, :class_name=>"Core::UsuarioGrupo"
  has_many :grupos, :through=>:usuario_grupos, :class_name=>"Core::Grupo"
  has_many :sistemas, :through=>:grupos, :class_name=>"Core::Sistema"
  has_many :modulos, :through=>:sistemas, :class_name=>"Core::Modulo"
  has_many :dads, :class_name=>"Aquaviario::Dad"
  has_many :unidade_cargas, :class_name=>"Aquaviario::UnidadeCarga"
  has_many :dcs, :class_name=>"Aquaviario::Dc"

  #validações
  validates_presence_of :cpf	
  validates_uniqueness_of :cpf
  validates_presence_of :nome
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_confirmation_of :email
  #chamadas de funcões
  
  after_save :verifica_master
    
  after_create :cria_senha
  
  #funções
  def cria_senha
    s = Core::Senha.new
    s.usuario_id = self.id
    s.senha = "@mudar"
    s.save
  end


  def pode_acessar(controle)
    aut = false
    #varre os sistemas do usuario e adiciona a sistema
    self.sistemas.each do |sistema|
      #se o sistema.controlador for igual ao controllador mandado pela funcao entao o usuario esta autorizado (aut = true) senao ja era pra ele
      if sistema.controlador.downcase == controle.to_s.downcase
      aut = true
      end
    end
    return aut
  end

  def usuario_mudar_senha
    if self.mudarsenha == true
      "Mudar"
    else
      ""
    end
  end

  def usuario_ativo
    if self.status == true
      "Ativo"
    else
      "Inativo"
    end
  end

	def verifica_master
		if self.master == true
			grupos = self.empresa.grupos.all
			grupos.each do |grupo|
				Core::UsuarioGrupo.find_or_create_by_grupo_id_and_usuario_id(:grupo_id=>grupo.id, :usuario_id=>self.id)
			end
		end
	end

  scope :da_transportadora, lambda {|id| {:conditions=>['transportadora_id = ?', id]}}

end
