class GooglePlacesClient
  def self.all lat, long, opts={}
    client.spots(lat, long, name: opts[:name])
  end

  private

  def self.client
    @client ||= GooglePlaces::Client.new(ENV['GOOGLE_API_KEY'])
  end
end
