#Mammaliicoccus

#Gubbins
run_gubbins.py --prefix gubbins --threads 15 core_gene_alignment_filtered.aln

#Model test
conda activate modeltest-ng
modeltest-ng -i gubbins.filtered_polymorphic_sites.phylip -d nt -p 15

#Partition 1/1:
#                         Model         Score        Weight
#---------------------------------------------------------
#      BIC                 GTR  1092874.6541        0.9964
#      AIC                 GTR  1092165.2183        0.7129
#     AICc                 GTR  1092165.2183        0.7129

#Raxml

#Raxml

conda activate raxmlng



#1.

raxml-ng --check --msa gubbins.filtered_polymorphic_sites.phylip --model GTR --prefix T1


#2. 
screen -S mammaliicoccus
conda activate raxmlng
raxml-ng --all --msa gubbins.filtered_polymorphic_sites.phylip --model GTR --prefix T3_all --threads 15 --seed 2 --bs-trees 1000
