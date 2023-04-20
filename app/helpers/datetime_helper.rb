module DatetimeHelper

  def strf_ymdhms(datetime)
    datetime ? datetime.strftime("%Y-%m-%d %H:%M:%S") : ''
  end

end