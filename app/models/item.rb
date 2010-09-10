class Item < ActiveRecord::Base
  
  belongs_to :bidder
  
  accepts_nested_attributes_for :bidder
  
  def offer=(n)
    write_attribute :offer, n ? (n.to_f*100.0).to_i : n
  end
  
  def offer
    read_attribute(:offer) / 100.0 if read_attribute(:offer)
  end

  def suggested_offer=(n)
    write_attribute :suggested_offer, n ? (n.to_f*100.0).to_i : n
  end
  
  def suggested_offer
    read_attribute(:suggested_offer) / 100.0 if read_attribute(:suggested_offer)
  end

  
end
