# Гайд, как запускать пайплайн


## Входные данные

[Assembler SARS-CoV-2](https://docs.google.com/document/d/1paihKa2EMBJ95FIeWFGcI7KzbWQLg6JudOe1eh7GDJM/edit?tab=t.0)
 
```bash
conda create -n sra-tools -c bioconda sra-tools
conda activate sra-tools
prefetch SRR31122807 --output-directory test_input
fastq-dump --split-files --gzip ./test_input/SRR31122807/SRR31122807.sra -O test_input
```

## Ставим Snakemake

```bash
mamba create -n snakemake -c bioconda snakemake
conda activate snakemake
```

```bash 
snakemake --cores 4 --use-conda
```

## Как это работает? 

Нужно указать кусочки геномов или, если уже есть собраные - assembly.

```
sample_id,read_1,read_2,assembly
sample_1,test_input/SRR31122807_1.fastq.gz,test_input/SRR31122807_2.fastq.gz,
sample_with_spades,test_input/SRR31122807_1.fastq.gz,test_input/SRR31122807_2.fastq.gz,/Users/user/Univ/Data_Driven/DD_2024_private/hw3/test_output/sample_1/spades/scaffolds.fasta
```

params.json - данные каждой утилиты
 
```
{
    "global_params": {"inpdir": "test_input", "outdir": "test_output"},
    "spades": {"outdir": "spades_out"},
    "quast" : {"reference": "/path/to/reference"},
    "prokka": {"genus": "Escherichia", "outdir": "prokka_out"},
    "abricate": {"database": ["ncbi", "ResFinder"]}
 }
```

Запуск окружения

```
snakemake --cores 4 --use-conda
```