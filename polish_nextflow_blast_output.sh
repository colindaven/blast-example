#/bin/bash

# Colin Sept 2018
# Polish Nextflow blast output

for i in `ls *fasta.csv`
        do
        echo $i
        cat $i | grep -v "Submitted process" | grep -v "revision" | grep -v "executor" | grep -v "version" | sort | uniq -c | sort -rn > $i.filt.csv

done

