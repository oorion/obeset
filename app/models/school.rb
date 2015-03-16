class School
  attr_reader :service

  def self.service
    @service = SchoolistService.new
  end

  def self.all
    service.schools.map do |school|
      _build_object(school)
    end
  end

  def self.find(id)
    school = service.school(id)
    _build_object(school)
  end

  private

  def self._build_object(data)
    OpenStruct.new(data)
  end
end
