class TagsController < ApplicationController
  before_action :set_tag, only: [:show]

  def show
    @transactions = Transaction.includes(transaction_tag_ships: :tag)
                               .where(tags: { id: @tag.id })
                               .distinct
                               .page(params[:page])
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

end
