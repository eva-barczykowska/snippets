require 'roda'

class App < Roda
  route do |r|
    r.get '/hi' do
      "Hello World, this is Ewa learning about Roda."
    end
  end
end
