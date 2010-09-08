module ItemsHelper
  def authorized?
    session[:secret].eql?("123")
  end
end
