module StaticHelper
  def check_if_active(tab)
    request.path == tab ? 'active' : ''
  end
end
