# The name of this view in Looker is "Empcsv"
view: empcsv {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.empcsv ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Eid" in Explore.

  dimension: eid {
    type: string
    sql: ${TABLE}.eid ;;
  }

  dimension: ename {
    type: string
    sql: ${TABLE}.ename ;;
  }
  measure: count {
    type: count
    drill_fields: [ename]
  }
}
