set -e
true
true
/SPAdes-4.0.0-Linux/bin/spades-hammer /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/corrected/configs/config.info
/usr/bin/python3 /SPAdes-4.0.0-Linux/share/spades/spades_pipeline/scripts/compress_all.py --input_file /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/corrected/corrected.yaml --ext_python_modules_home /SPAdes-4.0.0-Linux/share/spades --max_threads 16 --output_dir /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/corrected --gzip_output
true
true
/SPAdes-4.0.0-Linux/bin/spades-core /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K21/configs/config.info
/SPAdes-4.0.0-Linux/bin/spades-core /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K33/configs/config.info
/SPAdes-4.0.0-Linux/bin/spades-core /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K55/configs/config.info
/SPAdes-4.0.0-Linux/bin/spades-core /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K77/configs/config.info
/SPAdes-4.0.0-Linux/bin/spades-core /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K99/configs/config.info
/SPAdes-4.0.0-Linux/bin/spades-core /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K127/configs/config.info
/usr/bin/python3 /SPAdes-4.0.0-Linux/share/spades/spades_pipeline/scripts/copy_files.py /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K127/before_rr.fasta /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/before_rr.fasta /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K127/assembly_graph_after_simplification.gfa /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/assembly_graph_after_simplification.gfa /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K127/final_contigs.fasta /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/contigs.fasta /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K127/first_pe_contigs.fasta /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/first_pe_contigs.fasta /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K127/strain_graph.gfa /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/strain_graph.gfa /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K127/scaffolds.fasta /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/scaffolds.fasta /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K127/scaffolds.paths /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/scaffolds.paths /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K127/assembly_graph_with_scaffolds.gfa /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/assembly_graph_with_scaffolds.gfa /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K127/assembly_graph.fastg /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/assembly_graph.fastg /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/K127/final_contigs.paths /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/contigs.paths
true
/usr/bin/python3 /SPAdes-4.0.0-Linux/share/spades/spades_pipeline/scripts/breaking_scaffolds_script.py --result_scaffolds_filename /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/scaffolds.fasta --misc_dir /mnt/d/Projects/DD_2024_private/hw4/test_output/work/86/e0e40945cc41515298353c5e690f4d/test_output/spades/sample1/misc --threshold_for_breaking_scaffolds 3
true
