# DNABERT_2_project

This repo contains the necessary scripts to finetune DNABERT2 on RBP-seq data and evaluaten its predicitive capabilities to confirm specific binding motifs.

It contains a small dataset of PUM2 sequences. 
To run these scripts: Convert the data into (train, test, dev).csv and run the train.py script provided by the DNABERT2 authors via finetune.sh.

After finetuning, you can simply run the script, by running the visualisation.py script.
You will be asked to input the model, a DNA or RNA-seq by either inputting the raw sequence or a csv file containing tha sequence.
The output.png will be stored in your specified directory. Furthermore, you can adjust some parameters for the explainable techniques, which include:
1) window and step size for the sliding window approach
2) number of steps for the integrated gradient method.