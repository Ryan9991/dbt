{{
    config(
        materialized = 'incremental',
        unique_key = 'id',
        merge_update_columns = 'absen',
        alias = 'table_1',
        schema = 'dbt',
    )
}}

select * from {{ source('dbt', 'table_2')}}