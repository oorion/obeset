class School
  def self.all
    (SchoolistService.new.schools).map do |school|
      _build_object(school)
    end
  end

  private

  def self._build_object(data)
    OpenStruct.new(data)
  end
end
