class AdminController < ApplicationController
  def search_users
    # Medium warning because it's probably an admin interface
    User.ransack(params[:q])
  end

  # Test kwsplats in filter options
  before_filter(**options) do |c|
    x
  end
end
