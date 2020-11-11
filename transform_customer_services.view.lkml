view: transform_customer_services {
  sql_table_name: ecommerce.transform_customer_services ;;

  dimension_group: completed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.completed_at ;;
  }

  dimension_group: first_response {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.first_response_at ;;
  }

  dimension: first_response_hours {
    type: number
    sql: ${TABLE}.first_response_hours ;;
  }

  dimension_group: received {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.received_at ;;
  }

  dimension: request_status {
    type: string
    sql: ${TABLE}.request_status ;;
  }

  dimension: resolution_hours {
    type: number
    sql: ${TABLE}.resolution_hours ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
