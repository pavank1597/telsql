# The name of this view in Looker is "Case Sensitive Test"
view: case_sensitive_test {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.case_sensitive_test ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Column1" in Explore.

  dimension: column1 {
    type: string
    sql: ${TABLE}.column1 ;;
  }

  dimension: column2 {
    type: string
    sql: ${TABLE}.column2 ;;
  }

  dimension: column3 {
    type: number
    sql: ${TABLE}.column3 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_column3 {
    type: sum
    sql: ${column3} ;;  }
  measure: average_column3 {
    type: average
    sql: ${column3} ;;  }

  dimension: column4 {
    type: number
    sql: ${TABLE}.column4 ;;
  }
  measure: count {
    type: count
  }
}
