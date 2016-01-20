module Parse
  class API < Grape::API
    desc 'Receive Parse Webhook'
    post do
      puts 'post parse'
    end
  end
end
