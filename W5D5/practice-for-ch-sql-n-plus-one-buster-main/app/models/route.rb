# == Schema Information
#
# Table name: routes
#
#  id         :bigint           not null, primary key
#  number     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Route < ApplicationRecord
  has_many :buses,
    class_name: 'Bus',
    foreign_key: :route_id,
    primary_key: :id,
    dependent: :destroy

  def n_plus_one_drivers
    all_drivers = {}
    buses.each do |bus|
      drivers = bus.drivers.map(&:name)
      all_drivers[bus.id] = drivers
    end

    all_drivers
  end

  def better_drivers_query
    buses_drivers = self.buses.includes(:drivers).pluck("buses.id, drivers.name")
    all_drivers = Hash.new {|h,k| h[k] = Array.new}
    buses_drivers.each do |bus|
      all_drivers[bus[0]] << bus[1]
    end
    all_drivers
  end
end