view: ga_users {
  sql_table_name: ecommerce.ga_users ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: new_users_count {
    type: number
    sql: ${TABLE}.new_users_count ;;
  }

  dimension: users_count {
    type: number
    sql: ${TABLE}.users_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
