class SchoolistService
  def self.service
    @service ||= Faraday.new(url: "http://localhost:3000")
  end
end
