rounds=( ["6459"]="DR401_R1" ["6462"]="DR401_R2" ["6465"]="DR401_R3")

for X in "${!rounds[@]}"
do
	echo starting ${rounds[$X]}
	/Users/brooke/anaconda3/pkgs/pandaseq-2.11-he4cf2ce_3/bin/pandaseq -f "/Volumes/Backup Plus/220623Bir/D22-"$X"-5787M/220623Bir_D22-"$X"_1_sequence.fastq" -r "/Volumes/Backup Plus/220623Bir/D22-"$X"-5787M/220623Bir_D22-"$X"_2_sequence.fastq" -g pepdisp_"${rounds[$X]}"_ps.txt -k 3 -l 39 -L 39 -p GTGGAGGTGGCTCTGCTAGC -q ACACTGTTGTTATCAGATCTCGAGCTATTACAAGTCTTCTTCAGAAATAAGCTTTTGTTCGCCACCGGATCCACC -T 1 -w pepdist_"${rounds[$X]}"_ps.fasta
done