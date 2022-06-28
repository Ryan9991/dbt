{{
    config(
        materialized = 'incremental',
        unique_key = 'id',
        merge_update_columns = ['absen'],
        schema = 'dbt',
        alias = 'table_1'
    )
}}

select * from {{ source('dbt', 'table_2')}}