rounds=( ["6459"]="DR401_R1" ["6462"]="DR401_R2" ["6465"]="DR401_R3")
for X in "${!rounds[@]}"
do
	echo starting CDHIT ${rounds[$X]}
	/Users/brooke/computational_packages/cd-hit-v4.8.1-2019-0228/cd-hit-est -i pepdist_"${rounds[$X]}"_ps_renamed.fasta -o pepdist_"${rounds[$X]}"_cdhit -c 0.96 -n 10 -d 0
done
