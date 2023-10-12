# The name of this view in Looker is "Datawithtimewithspacecsv"
view: datawithtimewithspacecsv {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.datawithtimewithspacecsv ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dimension B" in Explore.

  dimension: dimension_b {
    type: string
    sql: ${TABLE}.`dimension b` ;;
  }

  dimension: index_id {
    type: number
    sql: ${TABLE}.`index id` ;;
  }

  dimension: measure_a {
    type: number
    sql: ${TABLE}.`measure a` ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_measure_a {
    type: sum
    sql: ${measure_a} ;;  }
  measure: average_measure_a {
    type: average
    sql: ${measure_a} ;;  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: time_c {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.`time c` ;;
  }
  measure: count {
    type: count
  }
}
