class FaqsController < ApplicationController

  def index
    @faqs = Faq.order(:position)
  end

  # POST /faqs/sort
  #
  # Expects the 'faq' param to be a list of IDs of FAQs
  # in the desired order.
  #
  # Updates the position of all FAQs in the order provided.
  #
  def sort
    params[:faq].each_with_index do |id, index|
      Faq.find(id).update!(position: index + 1)
    end

    head :ok
  end

end