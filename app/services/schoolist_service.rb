class SchoolistService
  def self.service
    @service ||= Faraday.new(url: "http://localhost:3000")
  end

  def self.schools
    @service.get("v1/schools")
  end

end
