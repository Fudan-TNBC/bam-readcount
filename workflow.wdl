import "./tasks/BAMReadCount.wdl" as BAMReadCount

workflow {{ project_name }} {
    File ref_dir
    String fa
    File bed
    File bam
    File bai
    String min_mapping_quality
    String min_base_quality
    String sample_id
    String docker
    String cluster_config
    String disk_size

    call BAMReadCount.BAMReadCount as BAMReadCount {
        input:
        ref_dir=ref_dir,
        fa=fa,
        bed=bed,
        bam=bam,
        bai=bai,
        min_mapping_quality=min_mapping_quality,
        min_base_quality=min_base_quality,
        docker=docker,
        disk_size=disk_size,
        cluster_config=cluster_config,
        sample_id=sample_id
    }
}