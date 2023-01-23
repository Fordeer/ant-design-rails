class ApplicationController < ActionController::Base
  before_action do
    @ant_design_rails ||= {
      request_fullpath: request.fullpath
    }
  end
  
  def render_ui
    render html: '', layout: true
  end
end
