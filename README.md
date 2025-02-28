### This is a docker image to run LinearDesign

LinearDesign is an externally developed tool, code for which is hosted at https://github.com/LinearDesignSoftware/LinearDesign

To run code via the image, iteration 0.0.1.1 requires you to log in to the docker image with shell access and then:

cd LinearDesign
echo { some nucleotide sequence } | ./lineardesign { options as per github website instructions }

OR

cat { some fasta file } | ./lineardesign { options as per github website information }


