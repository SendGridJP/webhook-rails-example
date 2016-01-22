class EventsControllerController < ApplicationController
  def handle_post
    params[:_json].each do |event|
      logger.info event
    end
  end
end
