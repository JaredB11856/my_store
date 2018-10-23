class CustomSessionsController < Devise::SessionsController
after_filter :after_login, :only => :create

  def after_login
    if !session[:order_id].nil?
      o = Order.find(session[:order_id])
      o.update!(user_id: current_user.id)  
    end
  end
end