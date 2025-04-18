#!/bin/bash
echo -e "Enter the base word for wordlist generation: "
read base_word
echo -e "Enter the length of wordlist: "
read length

# Generate wordlist based on base word and length
for i in $(seq 1 $length)
do
  echo "${base_word}${i}" >> goblin_wordlist.txt
done

echo -e "Wordlist generated with ${length} words at 'goblin_wordlist.txt'"
