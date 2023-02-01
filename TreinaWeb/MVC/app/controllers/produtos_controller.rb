class ProdutosController < ApplicationController
  def index
      render plain: 'Texto reinderizado ' + Produto.all[0].name # renderiza isso 
  end
end