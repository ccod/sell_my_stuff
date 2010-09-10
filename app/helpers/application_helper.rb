module ApplicationHelper
  
  def link_to_delete(text='Delete', url=nil, success="alert('deleted')")
    link_to_function(text, "$.ajax({type: 'DELETE', url: '#{url}', success: function(data) {
      #{success}
    }})")
  end
end
