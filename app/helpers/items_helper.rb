module ItemsHelper
  def authorized?
    session[:secret].eql?("123")
  end
  
  def current_bidder
    session[:bidder_id] ? Bidder.find(session[:bidder_id]) : Bidder.new
  end
end
