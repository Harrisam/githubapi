require_relative '../lang_freq'
require 'capybara/rspec'
require 'spec_helper'

Capybara.app = LangFreq

describe LangFreq, type: 'feature' do


  before do
    stub_request(:any, "https://api.github.com/users/Harrisam/repos").to_return(:body => File.read('spec/repos.json'))
  end


  it 'should return the response from the server' do
    visit '/lang_freq'
    expect(page).to have_content 'Language: Ruby'
  end

  


  # it 'should return awesomeserver' do
  #   visit '/'
  #   WebMock.should have_requested(:get, "https://api.github.com/users/Harrisam/repos")
  # end 

end
