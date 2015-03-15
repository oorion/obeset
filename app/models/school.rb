class School
  def self.all
    SchoolistService.new.schools
  end
end
