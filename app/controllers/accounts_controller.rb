class AccountsController < ApplicationController
  before_action :set_account, only: [:show]

  def show
    @transactions = Transaction.includes(:from_account, :to_account)
                               .where(from_id: @account.id)
                               .or(Transaction.where(to_id: @account.id))
                               .distinct
                               .page(params[:page])
  end

  private

  def set_account
    @account = Account.find(params[:id])
  end
end
