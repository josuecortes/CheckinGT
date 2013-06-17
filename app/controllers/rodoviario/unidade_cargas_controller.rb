class Rodoviario::UnidadeCargasController < ApplicationController

  def index

    @ucs = Aquaviario::UnidadeCarga.para_rodoviario(@usuario_logado.empresa.rodoviario).all

  end

end
