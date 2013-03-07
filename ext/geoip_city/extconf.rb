require 'mkmf'

if have_library('GeoIP', 'GeoIP_record_by_ipnum') and have_header('GeoIPCity.h')
  create_makefile('geoip_city/geoip_city')
else
  abort("you must have geoip c library installed!")
end
