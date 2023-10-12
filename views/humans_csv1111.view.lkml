# The name of this view in Looker is "Humans Csv1111"
view: humans_csv1111 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.Humans_csv1111 ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Person" in Explore.

  dimension: person {
    type: string
    sql: ${TABLE}.Person ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: region1 {
    type: string
    sql: ${TABLE}.region1 ;;
  }

  dimension: returned1 {
    type: string
    sql: ${TABLE}.returned1 ;;
  }
  measure: count {
    type: count
  }
}
