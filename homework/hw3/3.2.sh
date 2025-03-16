#!/bin/bash

seq=MSTRSVSSSSYRRMFGGPGTASRPSSSRSYVTTSTRTYSLGSALRPSTSRSLYASSPGGVYATRSSAVRL

# remove all dir and files
if [ -d "input" ]; then
  rm -r input
fi

if [ -d "output" ]; then
  rm -r output
fi

# generate random sequence
echo "Begin generate random sequence..."
mkdir input
cd input
for i in {1..10}; do
  shuffled=$(
    echo "$seq" | fold -w1 | shuf | tr -d '\n'
  )
  echo ">> seq$i: $shuffled"
  echo $shuffled > seq$i.fasta
done
echo "Generate random sequence finished."
cd ..

total_pairs=0

# blastp each sequence pair
mkdir output
cd output
echo "Begin blastp..."
for i in {1..10}; do
    for j in {1..10}; do
        if [ $i -lt $j ]; then
            outfile="seq${i}_vs_seq${j}.txt"
            echo "seq$i: " >> $outfile
            cat ../input/seq${i}.fasta >> $outfile
            echo "seq$j: " >> $outfile
            cat ../input/seq${j}.fasta >> $outfile
            echo "\n" >> $outfile
            blastp \
                -query ../input/seq${i}.fasta \
                -subject ../input/seq${j}.fasta \
                >> $outfile
            echo "finish blastp between ../input/seq${i}.fasta and ../input/seq${j}.fasta"

            ((total_pairs++))
        fi
    done
done
echo "Blastp $total_pairs pairs"
echo "Blastp finished."
cd ..

