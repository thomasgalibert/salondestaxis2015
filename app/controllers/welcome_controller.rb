class WelcomeController < ApplicationController
  def index
  	@inscription = Inscription.new
  end
end
