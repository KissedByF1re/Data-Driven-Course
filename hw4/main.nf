process FastQC {
    publishDir "./", mode: 'copy'

    tag { sample_id }
    container 'biocontainers/fastqc:v0.11.9_cv8'

    input:
    tuple val(sample_id), path(read1), path(read2)

    output:
    path("${params.outdir}/fastqc/${sample_id}")

    script:
    """
    mkdir -p ${params.outdir}/fastqc/${sample_id}
    fastqc -o ${params.outdir}/fastqc/${sample_id} ${read1} ${read2}
    """
}

process SPAdes {
    publishDir "./", mode: 'copy'

    tag { sample_id }
    container 'staphb/spades'

    input:
    tuple val(sample_id), path(read1), path(read2)

    output:
    path("${params.outdir}/spades/${sample_id}/*")

    script:
    """
    mkdir -p ${params.outdir}/spades/${sample_id}
    spades.py --pe1-1 ${read1} --pe1-2 ${read2} -o ${params.outdir}/spades/${sample_id}
    """
}

process QUASTFromReads {
    publishDir "./", mode: 'copy'

    tag { sample_id }
    container 'staphb/quast'

    input:
    tuple val(sample_id), path(assemblies1), path(assemblies2)

    output:
    path("${params.outdir}/quast_from_reads/${sample_id}/*")

    script:
    """
    mkdir -p ${params.outdir}/quast_from_reads/${sample_id}
    quast.py -o ${params.outdir}/quast_from_reads/${sample_id} ${assemblies1} ${assemblies2}
    """
}

process QUASTFromAssembly {
    publishDir "./", mode: 'copy'

    tag { sample_id }
    container 'staphb/quast'

    input:
    tuple val(sample_id), path(assemblies1), path(assemblies2)

    output:
    path("${params.outdir}/quast_from_assembly/${sample_id}/*")

    script:
    """
    mkdir -p ${params.outdir}/quast_from_assembly/${sample_id}
    quast.py -o ${params.outdir}/quast_from_assembly/${sample_id} ${assemblies1} ${assemblies2}
    """
}

process ProkkaAnnotation {
    publishDir "./", mode: 'copy'

    tag { sample_id }
    container 'staphb/prokka'

    input:
    tuple val(sample_id), path(assemblies1), path(assemblies2)

    output:
    path("${params.outdir}/prokka/${sample_id}/*")

    script:
    """
    prokka --genus ${params.prokka_genus} --outdir ${params.outdir}/prokka/${sample_id} --prefix scaffolds_annotation ${assemblies1} ${assemblies2}
    """
}

process AbricateAnalysis {
    publishDir "./", mode: 'copy'

    tag { sample_id }
    container 'staphb/abricate'

    input:
    tuple val(sample_id), path(assembly)

    output:
    path("${params.outdir}/abricate/${sample_id}/*")

    script:
    """
    mkdir -p ${params.outdir}/abricate/${sample_id}
    abricate --db ${params.abricate_database} ${assembly} > ${params.outdir}/abricate/${sample_id}/NCBI_results.txt
    """
}

workflow {
    samples = Channel.fromPath("samples.csv").splitCsv(header: true)

    reads = samples
        .filter { row -> row.read_1 && row.read_2 }
        .map { row -> tuple(row.sample_id, file(row.read_1), file(row.read_2)) }

    fastqc_results = FastQC(reads)

    spades_results = SPAdes(reads)

    assemblies = samples
        .filter { row -> row.assembly1 && row.assembly2 }
        .map { row -> tuple(row.sample_id, file(row.assembly1), file(row.assembly2)) }

    quast_from_reads_results = QUASTFromReads(assemblies)

    quast_from_assembly_results = QUASTFromAssembly(assemblies)

    prokka_results = ProkkaAnnotation(assemblies)

    assembly = samples
        .filter { row -> row.assembly1 }
        .map { row -> tuple(row.sample_id, file(row.assembly1)) }

    abricate_results = AbricateAnalysis(assembly)
}
