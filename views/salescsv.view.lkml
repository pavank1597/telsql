# The name of this view in Looker is "Salescsv"
view: salescsv {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.salescsv ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Eid" in Explore.

  dimension: eid {
    type: string
    sql: ${TABLE}.eid ;;
  }

  dimension: months {
    type: string
    sql: ${TABLE}.months ;;
  }

  dimension: salesamount {
    type: number
    sql: ${TABLE}.salesamount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_salesamount {
    type: sum
    sql: ${salesamount} ;;  }
  measure: average_salesamount {
    type: average
    sql: ${salesamount} ;;  }
  measure: count {
    type: count
  }
}
