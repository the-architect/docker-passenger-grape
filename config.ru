require 'grape'

class API < Grape::API

  version '1', using: :header, vendor: 'helloworld'
  format :json

  get '/' do
    { hello: 'world' }
  end
end

run API