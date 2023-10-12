# The name of this view in Looker is "Blk Load1re Return"
view: blk_load1re_return {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.blk_load1re_return ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Market" in Explore.

  dimension: market {
    type: string
    sql: ${TABLE}.market ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }
  measure: count {
    type: count
  }
}
