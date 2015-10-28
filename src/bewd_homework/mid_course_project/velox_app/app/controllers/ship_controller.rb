class ShipController < ApplicationController


  def home
    render :home
  end

  def create
    require 'EasyPost'
    EasyPost.api_key = Rails.application.secrets.easypost_api_key
    recipient_address = params[:to_address]
    # binding.pry
    to_address = EasyPost::Address.create(
      :name => recipient_address[:name],
      :street1 => recipient_address[:street1],
      :city => recipient_address[:city],
      :state => recipient_address[:state],
      :zip => recipient_address[:zip],
      :country => recipient_address[:country],
      :phone => recipient_address[:phone],
      )
      sender_address = params[:from_address]
    from_address = EasyPost::Address.create(
      :company => sender_address[:company],
      :street1 => sender_address[:street1],
      :city => sender_address[:city],
      :state => sender_address[:state],
      :zip => sender_address[:zip],
      :phone => sender_address[:phone],
      )
    package = params[:parcel]
    parcel = EasyPost::Parcel.create(
      :width =>  package[:width],
      :length => package[:length],
      :height => package[:height],
      :weight => package[:weight],
      )

    customs_item = EasyPost::CustomsItem.create(
      :description => 'EasyPost T-shirts',
      :quantity => 2,
      :value => 23.56,
      :weight => 33,
      :origin_country => 'us',
      :hs_tariff_number => 123456
      )
    customs_info = EasyPost::CustomsInfo.create(
      :integrated_form_type => 'form_2976',
      :customs_certify => true,
      :customs_signer => 'Mr.Clean',
      :contents_type => 'gift',
  :contents_explanation => '', # only required when contents_type => 'other'
  :eel_pfc => 'NOEEI 30.37(a)',
  :non_delivery_option => 'abandon',
  :restriction_type => 'none',
  :restriction_comments => '',
  :customs_items => [customs_item]
  )

    @shipment = EasyPost::Shipment.create(
      :to_address => to_address,
      :from_address => from_address,
      :parcel => parcel,
      :customs_info => customs_info
      )
    shipment.buy(
      :rate => shipment.lowest_rate
      )

    # binding.pry
    puts shipment.postage_label.label_url

    redirect_to shipment.postage_label.label_url
    #render :home
end
  def show
    
  end
end
