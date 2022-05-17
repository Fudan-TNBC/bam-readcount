task BAMReadCount {

    String sample_id
    File ref_dir
    String fa
    File bed
    File bam
    File bai
    String min_mapping_quality
    String min_base_quality
    String docker
    String cluster_config
    String disk_size

    command <<<
        bam-readcount -w 0 -q ${min_mapping_quality} -b ${min_base_quality} -f ${ref_dir}/${fa} -l ${bed} ${bam} > ${sample_id}.readcount
    >>>

    runtime {
        docker: docker
        cluster: cluster_config
        systemDisk: "cloud_ssd 40"
        dataDisk: "cloud_ssd " + disk_size + " /cromwell_root/"
    }

    output {
        File BAMReadCount = "${sample_id}.readcount"
    }
}