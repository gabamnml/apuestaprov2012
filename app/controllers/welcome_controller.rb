class WelcomeController < ApplicationController
  def index
    @candidatos = {}
    _candidatos = Candidato.all
    _candidatos.each do |candidato|
      @candidatos[candidato.name] = candidato
    end
  end

  def vote
    candidato = Candidato.find_by_id params[:id]
    if candidato and !current_user.vote
      candidato.update_attribute('votes', candidato.votes + 1)  # TODO race conditions?
      current_user.update_attribute('vote', true)
    end
    redirect_to url_for(:action => 'index')
  end
end
