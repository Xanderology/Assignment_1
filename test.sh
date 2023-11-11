#1.Navigate to the user's home directory.
cd ~ #Takes you to home directory

#2  Create a directory titled Informatics_573 and navigate to it  
mkdir Informatics_573 #Makes directory of Informatics_573
cd Informatics_573 #Changes directory into Informatics_573

#3 Download all secondary assemblies for human chromosome 1 from University of California, Santa Cruz (UCSC) Genome browser (all chromosome 1 assemblies except chr1.fa.gz)
wget --timestamping 'ftp://hgdownload.cse.ucsc.edu/goldenPath/hg38/chromosomes/chr1_*' #downloads all secondary assemblies, * implies specifcally for chr1 only

#4. Unzip all of the downloaded chromosome 1 assemblies 
gunzip *fa.gz # Unzip all of the downloaded chromosome 1 assemblies 

#5. Create a new empty file called “data_summary.txt”
touch data_summary.txt #Creates a empty file called data_summary.txt

#6. Append a list of the all detailed information (including at least file name, size, and permissions) to “data_summary.txt”
ls -lh >>data_summary.txt #Append a list of the all detailed information (including file name, size, and permission) to data_summary.txt

#7. Append the first 10 lines of each of the chromosome 1 assemblies to“data_summary.txt"

head -n 10 chr1* >>data_summary.txt # Append the first 10 lines of each of the chromosome 1 assemblies to data_summary.txt

#8. Append the name of assembly as well as the total number of lines included in thatassembly to “data_summary.txt”
wc -l chr1* >>data_summary.txt #Append the name of assembly as well as total number of lines inclued in that assembly to data_summary.txt

