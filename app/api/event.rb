module Event
  class API < Grape::API

    format :json

    helpers do
      def logger
        API.logger
      end
    end

    desc 'Receive Event Webhook'
    # params do
    #   requires :json, type: Array[JSON] do
    #     requires :event, type: String
    #   end
    # end
    # params do
    #   optional :json, type: Array do
    #     requires :event, type: String
    #   end
    # end
    post do
      # Rails.logger = Logger.new(STDOUT)
      #params[:json].each {|event| logger.info event.inspect}
      logger.info params.to_s
      p params
      logger.info params.inspect
      logger.info params.instance_variables
      params.each do |event|
        logger.info event#{}"post event: #{params[:json].inspect}"
      end
      status 201
    end
  end
end
