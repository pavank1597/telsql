# The name of this view in Looker is "Trendmeasuretqlcsv"
view: trendmeasuretqlcsv {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.trendmeasuretqlcsv ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_col {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date_col ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Measure1" in Explore.

  dimension: measure1 {
    type: number
    sql: ${TABLE}.measure1 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_measure1 {
    type: sum
    sql: ${measure1} ;;  }
  measure: average_measure1 {
    type: average
    sql: ${measure1} ;;  }
  measure: count {
    type: count
  }
}
