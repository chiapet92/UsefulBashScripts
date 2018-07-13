#!/bin/sh

# old_name = 'HIST_LNDC_STD_STR_ITEM_M'
# new_name = 'LNDC_STD_STR_ITEM_M_HIST'
old_name='mydrill_xref_store_trait'
new_name='LNDC_STD_STR_ITEM_MV_M_HIST'

sed_string='s/'$old_name'/'$new_name'/i'
sed_string_global=$sed_string'g'

# # Rename file strings that match criteria from first to the second phrase
# rename 's/${old_name}/${new_name}/' *.*
echo $sed_string_global

# How to change text in file in batch (have to be in folder)
find . -type f  \( -name '*.sql' -o -name '*.json' -o -name '*.ini' \) -exec sed -i '' $sed_string_global {} \;
# find ./ -type f -name '*' -exec sed -i '' 's/LNDC_STD_STR_ITEM_M_HIST/TESTING_LOL/g' {} \;


# rename filenames in folder + subfolders
find . -name '*' -exec rename $sed_string -- {} +

