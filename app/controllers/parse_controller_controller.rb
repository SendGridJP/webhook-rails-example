class ParseControllerController < ApplicationController
  def handle_post
    logger.info params

    # Attachment file : attachment1, 2, 3...
    #file = params["attachment1"]
  end
end
