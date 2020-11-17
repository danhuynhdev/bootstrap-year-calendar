view: ecommerce_country {
  sql_table_name: ecommerce.ecommerce_country ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: continent_name {
    type: string
    sql: ${TABLE}.continent_name ;;
  }

  dimension: continent_name_2 {
    type: string
    sql: ${TABLE}.continent_name ;;
  }


  dimension: continent_name_34 {
    type: string
    sql: ${TABLE}.continent_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name, continent_name]
  }
}
