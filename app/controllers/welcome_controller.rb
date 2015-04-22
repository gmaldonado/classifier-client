class WelcomeController < ApplicationController

  require 'rest-client'
  require 'rubygems'
  require 'json'


  def index
    optionsFromClassifier = RestClient.get("http://localhost:8080/classifier-rest-service/rest/options/")
    JSON.parse(optionsFromClassifier)
  end
  helper_method :index
end
