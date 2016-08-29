class CourseController < ApplicationController
	before_action :set_variables

  def courselist

  end

  def timelist

  end

  def memberlist
  	@senttime = Time.new(params[:enrolltime]["enrolltime_time(1i)"].to_i, params[:enrolltime]["enrolltime_time(2i)"].to_i, params[:enrolltime]["enrolltime_time(3i)"].to_i, params[:enrolltime]["enrolltime_time(4i)"].to_i, params[:enrolltime]["enrolltime_time(5i)"].to_i)

  	@rangecourse = Taxicourse.where(
    		startpoint: params[:startingpoint],
    		endpoint: params[:endingpoint],
    		enrolltime: (@senttime - 1200)..(@senttime + 3600)
    		)
  	if (Taxicourse.where(
    		startpoint: params[:startingpoint],
    		endpoint: params[:endingpoint],
    		enrolltime: @senttime
    		) )
  		@existingcheck = true
  	else
  		@existingcheck = false
  	end
    @taxicourse = Taxicourse.new


  end

  def createcourse
    @taxicourse = Taxicourse.new(taxicourse_params)

    # 시간차이로 두개생기는것방지. 한번더 체크필요
    @taxicourse.save
    redirect_to action: 'joincourse', id: @taxicourse, flash: {notice: "경로가 생성되었습니다."}

  	
  end

  def joincourse
    @selectedroute = Taxicourse.find(params[:id])
    current_user.save if current_user.taxicourse_id = @selectedroute.id

  end

  def breakjoin
    #route
  end


  private
  def set_variables
	@routepoint = [ "익산 터미널", "익산 역", "원광대", "CGV/홈플러스" ]
	Time.zone = 'Seoul'
  end
  def taxicourse_params
    params.require(:taxicourse).permit(:startpoint, :endpoint, :enrolltime, :genderonly, :history, :chatlink, :descript1, :descript2, :randstr)
  end 




end
