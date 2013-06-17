class Rodoviario::NotasController < ApplicationController

  def index

    @uc = Aquaviario::UnidadeCarga.para_rodoviario(@usuario_logado.empresa.rodoviario).find(params[:unidade_carga_id])
    @notas = @uc.nota_fiscal_eletronicas.do_rodoviario(@usuario_logado.empresa.rodoviario).paginate(:page => params[:page], :per_page => 15).all

  end

end
