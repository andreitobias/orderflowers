module OrdersHelper
    
  def render_success(object, status = :ok)
    render json: object, status: status
  end
  
  def render_failure(object, status: :unprocessable_entity)
    render json: {status: 'ERROR', message: 'Something went wrong'}
  end
    
end
