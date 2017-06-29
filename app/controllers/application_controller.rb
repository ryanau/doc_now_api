class ApplicationController < ActionController::API
  def render_json_response(status, options = {})
    render json: {
      message: options[:message],
      resource: options[:resource],
      to: options[:to],
      errors: options[:errors]
    }, status: status
  end
end
