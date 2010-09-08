module ItemsHelper
  def authorized?
    params[:secret].eql?("123")
  end
end
