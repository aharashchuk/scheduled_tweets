class TwitterAccountsController < ApplicationController
  def index
    @twitter_accounts = current_user.twitter_accounts
  end
end