view: station {
  sql_table_name: lookerdata.bike_trips.station ;;

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.station_id ;;
  }
}


# 2. put redshift performance block on demo
#
# 3. build a derived table to determine station usage. number of trips by station. tier stations [0,100,1000,5000,10000] trips
#
# 4. templated filter. for the pdt above give the station statistics a variable time window.
#    Lets say an end user was to know number of trips  for each station for the last 30 days or 90 days.
#
# 5. create an extended view of trips and put all the derived fields and measures on that view.
#    create an extended view of trips and redefine trip.count as trips that lasted more than 1 minute
#
# 6. add an access filter so that end users can only look at info for 1 station
#
# 7. using html create a red, orange, yellow, green, blue background for stations that fall into the different tiers
#
# 8. create a high level trips dashboard and a stations dashboard and link them together on the station name field
