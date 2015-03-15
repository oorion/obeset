class SchoolistService
  attr_reader :service

  def initialize
    @service ||= Faraday.new(url: "http://localhost:3000/v1")
  end

  def schools
    parse(@service.get("schools"))
  end

  def school(id)
    parse(@service.get("schools/#{id}"))
  end

  private

  def parse(data)
    JSON.parse(data.body)
  end
end
