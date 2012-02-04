require 'user'

class UserFetcher


  def fetchem
    User.visible.random_order.to_json
  end
end
