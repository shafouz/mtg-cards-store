class ApplicationController < ActionController::Base
    include Pagy::Backend
    after_action -> { flash.discard }
end
