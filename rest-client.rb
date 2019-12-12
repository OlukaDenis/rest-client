# frozen_string_literal: true

require 'rest-client'

class BingSearch
  URL = 'http://www.bing.com/search?'
  QUERY = 'q='

  def user_input
    puts 'What do you want to search? '
    @user_input = gets.chomp
  end

  def create_url
    @user_input = URL + QUERY + @user_input if @user_input.to_s.strip.empty? == false
    print @user_input
  end

  def search_result
    @result = RestClient.get(@user_input)
  end

  def display_result
    puts @result.code
    puts @result.headers
    puts @result.cookies
    puts @result.body
  end
end

@test1 = BingSearch.new
@test1.user_input
@test1.create_url
@test1.search_result
@test1.display_result
