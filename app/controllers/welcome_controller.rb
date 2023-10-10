class WelcomeController < ApplicationController
  def index
    @meu_nome = params[:nome]
    @curso = params[:curso]
    unless @curso
        @curso = "rails"      
    end
  unless @meu_nome
      @meu_nome = "fulano"      
  end

  end
end
