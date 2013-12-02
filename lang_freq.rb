#this will give us the main language for  a repo. WHat we need is the the language most 
#used accross all repos for the user.

# STEP 1: get request Github API (HTTParty)

require 'httparty'
require 'sinatra'
require 'json'

class LangFreq < Sinatra::Base

  get '/lang_freq' do
    response = HTTParty.get("https://api.github.com/users/Harrisam/repos")
    JSON.parse(response)
  end

end