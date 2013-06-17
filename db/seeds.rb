#encoding : utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = Core::Usuario.find_or_create_by_cpf(:nome=>"admin", :email=>"admin@", :status=>true, :cpf=>"admin")

# Adicionar os Sistemas do Core
m = Core::Modulo.find_or_create_by_nome(:nome=>"Administracao Geral", :sigla=>"AdmGeral", :status=>true)
s1 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Usuarios", :sigla=>"ContUsuariosGeral", :url=>"/core/usuarios", :controlador=>"Core::UsuariosController", :status=>true)
s2 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Grupos", :sigla=>"ContGruposGeral", :url=>"/core/grupos", :controlador=>"Core::GruposController", :status=>true)
s3 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle de Modulos", :sigla=>"ContModulos", :url=>"/core/modulos", :controlador=>"Core::ModulosController", :status=>true)
s4 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle de Sistemas", :sigla=>"ContSistemas", :url=>"", :controlador=>"Core::SistemasController", :status=>true)
s5 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Usuarios por Grupo", :sigla=>"ContUsuariosGrupoGeral", :url=>"", :controlador=>"Core::UsuarioGruposController", :status=>true)
s6 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Sistemas por Grupo", :sigla=>"ContSistemasGrupoGeral", :url=>"", :controlador=>"Core::GrupoSistemasController", :status=>true)
s7 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Empresas", :sigla=>"ContEmpresasGeral", :url=>"/core/empresas", :controlador=>"Core::EmpresasController", :status=>true)
s8 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Modulos por Empresa", :sigla=>"ContModulosEmpresasGeral", :url=>"", :controlador=>"Core::EmpresaModulosController", :status=>true)
s9 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Empresa Aquaviaria", :sigla=>"ContAquaviarioGeral", :url=>"", :controlador=>"Core::AquaviariosController", :status=>true)
s10 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Uf", :sigla=>"ContUfsGeral", :url=>"core/ufs", :controlador=>"Core::UfsController", :status=>true)
s11 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Usuario Master", :sigla=>"ContUsuMasterGeral", :url=>"", :controlador=>"Core::UsuarioMasterController", :status=>true)
s12 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Portos", :sigla=>"ContPortosGeral", :url=>"", :controlador=>"Core::PortosController", :status=>true)
s13 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Status do Dad", :sigla=>"ContStautsDadGeral", :url=>"/core/status_dads", :controlador=>"Core::StatusDadsController", :status=>true)
s14 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Status das Unidades de Carga", :sigla=>"ContStatusUniCargaGeral", :url=>"/core/status_unidade_cargas", :controlador=>"Core::StatusUnidadeCargasController", :status=>true)
s15 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Status do Processamento", :sigla=>"ContStatusProcessosGeral", :url=>"/core/status_processamentos", :controlador=>"Core::StatusProcessamentosController", :status=>true)
s16 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Status do Desembaraco", :sigla=>"ContStatusDesembaracoGeral", :url=>"/core/status_desembaracos", :controlador=>"Core::StatusDesembaracosController", :status=>true)
s17 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Status do Selo Fiscal", :sigla=>"ContStatusSeloFiscalGeral", :url=>"/core/status_selo_fiscal_tipos", :controlador=>"Core::StatusSeloFiscalTiposController", :status=>true)
s18 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Status do Fiel Depositario", :sigla=>"ContStatusFielDepositarioGeral", :url=>"/core/status_termo_fds", :controlador=>"Core::StatusTermoFdsController", :status=>true)
s19 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Status do Tipo de Detalhe", :sigla=>"ContStatusTipoDetalhesGeral", :url=>"/core/tipo_detalhes", :controlador=>"Core::TipoEventosController", :status=>true)
s20 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Status do Tipo de Evento", :sigla=>"ContStatusTipoEventosGeral", :url=>"/core/tipo_eventos", :controlador=>"Core::TipoDetalhesController", :status=>true)
s21 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Tipo de Unidades de Carga", :sigla=>"ContTipoUCGeral", :url=>"/core/tipo_unidades", :controlador=>"Core::TipoUnidadesController", :status=>true)
s22 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Tipo de Documento Eletronico", :sigla=>"ContTipoDocuEletronGeral", :url=>"/core/tipo_dcs", :controlador=>"Core::TipoDcsController", :status=>true)
s23 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Empresa Rodoviaria", :sigla=>"ContEmpRodoviaria", :url=>"", :controlador=>"Core::RodoviariosController", :status=>true)
s24 = Core::Sistema.find_or_create_by_controlador(:modulo_id=>m.id, :nome=>"Controle Geral de Status de Parametrizacao", :sigla=>"ContStatusParam", :url=>"/core/status_parametrizacao", :controlador=>"Core::StatusParametrizacaosController", :status=>true)



# grupos padrao do sistema
g = Core::Grupo.find_or_create_by_nome(:nome=>"Administracao Geral", :sigla=>"ADM_Geral", :status=>true)

Core::UsuarioGrupo.find_or_create_by_usuario_id_and_grupo_id(:usuario_id=>u.id, :grupo_id=>g.id)

Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s1.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s2.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s3.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s4.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s5.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s6.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s7.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s8.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s9.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s10.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s11.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s12.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s13.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s14.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s15.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s16.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s17.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s18.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s19.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s20.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s21.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s22.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s23.id)
Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s24.id)


#Core::GrupoSistema.find_or_create_by_grupo_id_and_sistema_id(:grupo_id=>g.id, :sistema_id=>s21.id)

#populanod as coisas #############################3

#populando ufs
Core::Uf.find_or_create_by_sigla(:sigla=>"AC")
Core::Uf.find_or_create_by_sigla(:sigla=>"AL")
Core::Uf.find_or_create_by_sigla(:sigla=>"AP")
Core::Uf.find_or_create_by_sigla(:sigla=>"AM")
Core::Uf.find_or_create_by_sigla(:sigla=>"BA")
Core::Uf.find_or_create_by_sigla(:sigla=>"CE")
Core::Uf.find_or_create_by_sigla(:sigla=>"DF")
Core::Uf.find_or_create_by_sigla(:sigla=>"ES")
Core::Uf.find_or_create_by_sigla(:sigla=>"GO")
Core::Uf.find_or_create_by_sigla(:sigla=>"MA")
Core::Uf.find_or_create_by_sigla(:sigla=>"MT")
Core::Uf.find_or_create_by_sigla(:sigla=>"MS")
Core::Uf.find_or_create_by_sigla(:sigla=>"MG")
Core::Uf.find_or_create_by_sigla(:sigla=>"PA")
Core::Uf.find_or_create_by_sigla(:sigla=>"PB")
Core::Uf.find_or_create_by_sigla(:sigla=>"PR")
Core::Uf.find_or_create_by_sigla(:sigla=>"PE")
Core::Uf.find_or_create_by_sigla(:sigla=>"PI")
Core::Uf.find_or_create_by_sigla(:sigla=>"RJ")
Core::Uf.find_or_create_by_sigla(:sigla=>"RN")
Core::Uf.find_or_create_by_sigla(:sigla=>"RS")
Core::Uf.find_or_create_by_sigla(:sigla=>"RO")
Core::Uf.find_or_create_by_sigla(:sigla=>"RR")
Core::Uf.find_or_create_by_sigla(:sigla=>"SC")
Core::Uf.find_or_create_by_sigla(:sigla=>"SP")
Core::Uf.find_or_create_by_sigla(:sigla=>"SE")
Core::Uf.find_or_create_by_sigla(:sigla=>"TO")


#populando status do dad
Core::StatusDad.find_or_create_by_descricao(:descricao=>"Em Elaboracao")
Core::StatusDad.find_or_create_by_descricao(:descricao=>"Enviado")
Core::StatusDad.find_or_create_by_descricao(:descricao=>"Retificado")
Core::StatusDad.find_or_create_by_descricao(:descricao=>"Registrado Entrada")

#populando status Unidade de carga
Core::StatusUnidadeCarga.find_or_create_by_descricao(:descricao=>"Em Elaboracao")
Core::StatusUnidadeCarga.find_or_create_by_descricao(:descricao=>"Enviado")
Core::StatusUnidadeCarga.find_or_create_by_descricao(:descricao=>"Retificado")
Core::StatusUnidadeCarga.find_or_create_by_descricao(:descricao=>"Registrado Entrada")
Core::StatusUnidadeCarga.find_or_create_by_descricao(:descricao=>"Parametrizada")
Core::StatusUnidadeCarga.find_or_create_by_descricao(:descricao=>"A espera de termo de lacre")
Core::StatusUnidadeCarga.find_or_create_by_descricao(:descricao=>"A espera de agendamento")
Core::StatusUnidadeCarga.find_or_create_by_descricao(:descricao=>"A espera de vistoria")
Core::StatusUnidadeCarga.find_or_create_by_descricao(:descricao=>"Vistoriada")
Core::StatusUnidadeCarga.find_or_create_by_descricao(:descricao=>"Nao parametrizada")
Core::StatusUnidadeCarga.find_or_create_by_descricao(:descricao=>"Registrada saida")

#populando status do processamento
Core::StatusProcessamento.find_or_create_by_descricao(:descricao=>"Nao processado")
Core::StatusProcessamento.find_or_create_by_descricao(:descricao=>"Processado")

#populando status de Desembaraço
Core::StatusDesembaraco.find_or_create_by_descricao(:descricao=>"Nao desembaracada (nao processada)")
Core::StatusDesembaraco.find_or_create_by_descricao(:descricao=>"Nao desembaracada sob termo de transferencia")
Core::StatusDesembaraco.find_or_create_by_descricao(:descricao=>"Nao desembaracada com pendencia de desembaraco sob termo de fiel depositario")
Core::StatusDesembaraco.find_or_create_by_descricao(:descricao=>"Desembaracada a espera de termo de saida")
Core::StatusDesembaraco.find_or_create_by_descricao(:descricao=>"Desembaracada")

#populando status Selo fiscal tipo
Core::StatusSeloFiscalTipo.find_or_create_by_descricao(:descricao=>"Automatico")
Core::StatusSeloFiscalTipo.find_or_create_by_descricao(:descricao=>"Manual")

#populando status termo fiel depositario
Core::StatusTermoFd.find_or_create_by_descricao(:descricao=>"Em aberto")
Core::StatusTermoFd.find_or_create_by_descricao(:descricao=>"Encerrado")

#populando status tipo de evento
Core::TipoEvento.find_or_create_by_descricao(:descricao=>"Pagamento de imposto antecipado")
Core::TipoEvento.find_or_create_by_descricao(:descricao=>"Inadinplencia conta corrente")
Core::TipoEvento.find_or_create_by_descricao(:descricao=>"Inadinplencia obrigacao acessoria")
Core::TipoEvento.find_or_create_by_descricao(:descricao=>"Pendencia - procurar atendimento postos de atendimento")

#populando status tipo de detalhe
Core::TipoDetalhe.find_or_create_by_descricao(:descricao=>"Mercadoria desacobertada de nota fiscal")

#populando Tipo Unidade de Carga
Core::TipoUnidade.find_or_create_by_descricao(:descricao=>"Caminhao")
Core::TipoUnidade.find_or_create_by_descricao(:descricao=>"Bau")
Core::TipoUnidade.find_or_create_by_descricao(:descricao=>"Container")

#populando Tipo de Documento Eletronico
Core::TipoDc.find_or_create_by_descricao(:descricao=>"CTE - Aquaviario")
Core::TipoDc.find_or_create_by_descricao(:descricao=>"CTE - Rodoviario")
Core::TipoDc.find_or_create_by_descricao(:descricao=>"NFE")
Core::TipoDc.find_or_create_by_descricao(:descricao=>"Capa de Lote")

#populando Status Parametrização
Core::StatusParametrizacao.find_or_create_by_descricao(:descricao=>"Nao parametrizado")
Core::StatusParametrizacao.find_or_create_by_descricao(:descricao=>"Parametrizado")

################################## fim do core

#modulo empresas
mm = Core::Modulo.find_or_create_by_nome(:nome=>"Empresa", :sigla=>"ModEmpresa", :status=>true)


#modulo aquaviario
ma = Core::Modulo.find_or_create_by_nome(:nome=>"Aquaviario", :sigla=>"ModAqua", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>ma.id, :nome=>"Controle de Documento Auxiliar de Desembaraco", :sigla=>"ContDadAqua", :url=>"/aquaviario/dads", :controlador=>"Aquaviario::DadsController", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>ma.id, :nome=>"Controle Geral de Unidade de Carga", :sigla=>"ContUnidCargaGeral", :url=>"", :controlador=>"Aquaviario::UnidadeCargasController", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>ma.id, :nome=>"Controle Geral de Documento Eletronico", :sigla=>"ContDocEletGeral", :url=>"", :controlador=>"Aquaviario::DcsController", :status=>true)

#modulo porto
mp = Core::Modulo.find_or_create_by_nome(:nome=>"Porto", :sigla=>"ModPort", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mp.id, :nome=>"Controle de Registro de Entrada de DAD", :sigla=>"ContRegEntraPorto", :url=>"/porto/registro_entradas", :controlador=>"Porto::RegistroEntradasController", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mp.id, :nome=>"Controle de Unidades de Carga", :sigla=>"ContUnidCargaPorto", :url=>"/porto/unidade_cargas", :controlador=>"Porto::UnidadeCargasController", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mp.id, :nome=>"Controle Geral de Solicitacao de Saidas", :sigla=>"ContSolicSaidas", :url=>"", :controlador=>"Porto::SolicitarSaidasController", :status=>true)

#modulo rodoviario
mr = Core::Modulo.find_or_create_by_nome(:nome=>"Rodoviario", :sigla=>"ModRodo", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mr.id, :nome=>"Controle de Unidade de Carga", :sigla=>"ContUniCarga", :url=>"/rodoviario/unidade_cargas", :controlador=>"Rodoviario::UnidadeCargasController", :status=>true)
Core::Sistema.find_or_create_by_controlador(:modulo_id=>mr.id, :nome=>"Controle de Notas", :sigla=>"ContNotas", :url=>"", :controlador=>"Rodoviario::NotasController", :status=>true)



#modulo transportadoras
#mm = Core::Modulo.find_or_create_by_nome(:nome=>"Transportadora", :sigla=>"TransBasico", :status=>true)
#Core::Sistema.find_or_create_by_controlador(:modulo_id=>mm.id, :nome=>"Controle de Usuarios", :sigla=>"ContUsuTrans", :url=>"/transportadora/usuarios", :controlador=>"Transportadora::UsuariosController", :status=>true)
#Core::Sistema.find_or_create_by_controlador(:modulo_id=>mm.id, :nome=>"Controle de Grupos da Transportadora", :sigla=>"ContGruTrans", :url=>"/transportadora/grupos", :controlador=>"Transportadora::GruposController", :status=>true)
#Core::Sistema.find_or_create_by_controlador(:modulo_id=>mm.id, :nome=>"Controle de Sistemas por Grupo da Transportadora", :sigla=>"ContSisGruTrans", :url=>"", :controlador=>"Transportadora::GrupoSistemasController", :status=>true)
##Core::Sistema.find_or_create_by_controlador(:modulo_id=>mm.id, :nome=>"Controle de Usuarios por Grupo da Transportadora", :sigla=>"ContUsuGruTrans", :url=>"", :controlador=>"Transportadora::GrupoUsuariosController", :status=>true)
#Core::Sistema.find_or_create_by_controlador(:modulo_id=>mm.id, :nome=>"Controle de Estoque da Transportadora", :sigla=>"ContEstTrans", :url=>"/transportadora/estoques", :controlador=>"Transportadora::EstoquesController", :status=>true)
#Core::Sistema.find_or_create_by_controlador(:modulo_id=>mm.id, :nome=>"Controle de Acompanhamento de Embarques", :sigla=>"ContAcompEmbTrans", :url=>"/transportadora/embarques", :controlador=>"Transportadora::EmbarquesController", :status=>true)
#Core::Sistema.find_or_create_by_controlador(:modulo_id=>mm.id, :nome=>"Controle de Notas do Acompanhamento de Embarques", :sigla=>"ContNotdoAcompEmbTrans", :url=>"", :controlador=>"Transportadora::AcompanhamentosController", :status=>true)

#modulo transportadora aquaviaria
#mmm = Core::Modulo.find_or_create_by_nome(:nome=>"Aquaviario", :sigla=>"TransAqua", :status=>true)
#Core::Sistema.find_or_create_by_controlador(:modulo_id=>mmm.id, :nome=>"Controle de Portos", :sigla=>"ContPortos", :url=>"/aquaviario/portos", :controlador=>"Aquaviario::PortosController", :status=>true)
#Core::Sistema.find_or_create_by_controlador(:modulo_id=>mmm.id, :nome=>"Controle de Embarques", :sigla=>"ContEmbarques", :url=>"/aquaviario/embarques", :controlador=>"Aquaviario::EmbarquesController", :status=>true)
#Core::Sistema.find_or_create_by_controlador(:modulo_id=>mmm.id, :nome=>"Controle de Documentos do Embarque", :sigla=>"ContDocumentosEmbarque", :url=>"", :controlador=>"Aquaviario::DocumentosController", :status=>true)
#Core::Sistema.find_or_create_by_controlador(:modulo_id=>mmm.id, :nome=>"Controle de Acompanhamento de Notas do Embarque", :sigla=>"ContAcompNotEmb", :url=>"", :controlador=>"Aquaviario::AcompanhamentosController", :status=>true)
