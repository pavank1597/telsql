# The name of this view in Looker is "Biguser"
view: biguser {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: ui_test.biguser ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Name" in Explore.

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: passwords {
    type: string
    sql: ${TABLE}.passwords ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
