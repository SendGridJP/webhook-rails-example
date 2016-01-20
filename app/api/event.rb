module Event
  class API < Grape::API
    helpers do
      def logger
        API.logger
      end
    end
    desc 'Receive Event Webhook'
    params do
      requires :events, type: JSON, desc: 'event list'
    end
    post do
      logger.info "post event: #{params[:events].inspect}"
    end
  end
end
