Dado("preparo a massa para o endpoint swapi_co_api_films.get para cenario positivo") do
  @url = get_config('urls api') + '/films'
end

Quando("executo a request do swapi_co_api_films.get") do
  @response = HTTParty.get @url
end

Então("validar que é retornado os filmes para o cenario positivo") do
  @response['results'].select! { |movie| movie['director'].eql?('George Lucas') && movie['producer'].eql?('Rick McCallum') }
  puts "\n############################\n\nFilmes encontrados com \"George Lucas\" como diretor e \"Rick McCallum\" como produtor foram:\n\n"
  @response['results'].each do |movie|
    puts "#{movie['title']}\n"
  end
  expect(@response.code).to eql get_test_data('api_data http_status_code ok')
end
