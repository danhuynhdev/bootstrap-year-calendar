view: cohort_analysis {
  sql_table_name: ecommerce.cohort_analysis ;;

  dimension_group: cohort_month {
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
    sql: ${TABLE}.cohort_month ;;
  }

  dimension: cohort_size {
    type: number
    sql: ${TABLE}.cohort_size ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.users ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
