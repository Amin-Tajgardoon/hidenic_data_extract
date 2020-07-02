@echo off
set /A POP_SIZE=10
set HIDENIC_EXTRACT_OUTPUT_DIR=E:\Data\HIDENIC_EXTRACT_OUTPUT_DIR\POP_SIZE_10\ITEMID_REP
set HIDENIC_EXTRACT_CODE_DIR="C:\Users\mot16\Box Sync\Projects\Thesis\code\HIDENIC_extract"

mkdir %HIDENIC_EXTRACT_OUTPUT_DIR%

python -u %HIDENIC_EXTRACT_CODE_DIR%/hidenic_extract.py ^
    --out_path %HIDENIC_EXTRACT_OUTPUT_DIR% ^
    --resource_path %HIDENIC_EXTRACT_CODE_DIR%\resources\ ^
    --extract_pop 2 ^
    --extract_outcomes 0 ^
    --extract_codes 2 ^
    --extract_numerics 2 ^
    --var_limits 0 ^
    --exit_after_loading 0 ^
    --plot_hist 0 ^
    --psql_host localhost ^
    --psql_password amin3521 ^
    --pop_size %POP_SIZE% ^
    --min_percent 0 ^