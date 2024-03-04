class CustomersController < ApplicationController
  def index
  end

  def alphabetized
  end

  def missing_email
  end

  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order(:full_name)
  end

  def missing_email
    @customers = Customer.where(email_address: [nil, ''])
  end

end
