class WelcomeController < ApplicationController
  def index
    @candidatos = {}
    _candidatos = Candidato.all
    _candidatos.each do |candidato|
      @candidatos[candidato.name] = candidato
    end
  end

  def vote
    # TODO validate and count vote
    redirect_to url_for(:action => 'index')
  end
end
