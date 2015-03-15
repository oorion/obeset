class SchoolsController < ApplicationController
  def index
    schoolist = get_schools_from_schoolist
    @schools = JSON.parse(schoolist)
    binding.pry
  end

  def get_schools_from_schoolist
    ""
  end
end
