module FbGraph
  class FeedTargeting
    include Comparison

    attr_accessor :countries, :cities, :regions, :locales

    def initialize(attributes = {})
      @countries = attributes[:countries]
      @cities    = attributes[:cities]
      @regions   = attributes[:regions]
      @locales   = attributes[:locales]
    end

    def to_hash(options = {})
      {
        :countries => self.countries,
        :cities    => self.cities,
        :regions   => self.regions,
        :locales   => self.locales
      }
    end
  end
end
