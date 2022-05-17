
### README.md

> Author: Qingwang Chen
>
> Email: qwch20@fudan.edu.cn
>
> Last Updates: 16/10/2020

#### Requirements

- choppy
- Ali-Cloud
- Linux

```
# Activating the choppy environment
$ source activate choppy (open-choppy-env)

# First installation
$ choppy install chenqingwang/bam-readcount
# Non-first-time installation
$ choppy install chenqingwang/bam-readcount -f 

# Check the installed APP
$ choppy apps
```

#### Quick Start

```
# Prepare the samples.csv file
$ choppy samples junshang/bedtools-latest > samples.csv

# Submit a task
$ choppy batch junshang/bedtools-latest samples.csv -p Your_project_name -l Your_label

# Query task status
$ choppy query -L Your_label | grep "status"

# Query Failed Task
$ choppy search -s Failed -p Test_bamreadcount_chenqingwang_20201016 -u chenqingwang --short-format

# Result file address
$ oss://choppy-cromwell-result/test-choppy/Your_project_name/
```
#### Reference
> https://github.com/genome/bam-readcount