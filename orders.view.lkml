view: orders {
  sql_table_name: ecommerce.orders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: delivery_attempts {
    type: number
    sql: ${TABLE}.delivery_attempts ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.id,
      users.full_name,
      users.last_name,
      users.first_name,
      order_items.count,
      persisted_joined.count,
      persisted_orders1.count,
      persisted_orders2.count,
      persisted_orders46.count,
      persisted_orders_master.count
    ]
  }
}
