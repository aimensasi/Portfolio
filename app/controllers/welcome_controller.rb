class WelcomeController < ApplicationController
  layout 'welcome'
  def index
  	@works = Work.all
  end
end
