# uct-hpc-playground

testtgeqwgqrgfqwrf

## Usage

### Simple SBATCH

```bash
$ sbatch simple.sh
Submitted batch job <ID>
$ cat slurm-<ID>.out
/home/mrmnao001/Documents/Projects/uct-hpc-playground
Mon Jan 31 15:04:34 SAST 2022
srvcnthpc105.uct.ac.za
```

### Simple Singularity

```bash
$ singularity pull library://lolcow
$ sbatch singularity_simple.sh
Submitted batch job <ID>
$ cat slurm-<ID>.out
 _____
< moo >
 -----
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

### Build a Singularity Image and Run

```bash
$ singularity remote login  # login Sylabs.io for remote-builder
$ singularity build --remote python3.sif python3.def
$ singularity run python3.sif
Python 3.10.2
```

### A100

```bash
$ sbatch gpu_tset.sh
Submitted batch job <ID>
$ cat slurm-<ID>.out
Wed Feb  2 13:12:25 2022
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 470.57.02    Driver Version: 470.57.02    CUDA Version: 11.4     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|                               |                      |               MIG M. |
|===============================+======================+======================|
|   0  NVIDIA A100-PCI...  Off  | 00000000:17:00.0 Off |                   On |
| N/A   43C    P0   133W / 250W |  17407MiB / 40536MiB |     N/A      Default |
|                               |                      |              Enabled |
+-------------------------------+----------------------+----------------------+
|   1  NVIDIA A100-PCI...  Off  | 00000000:65:00.0 Off |                   On |
| N/A   28C    P0    65W / 250W |  21707MiB / 40536MiB |     N/A      Default |
|                               |                      |              Enabled |
+-------------------------------+----------------------+----------------------+
|   2  NVIDIA A100-PCI...  Off  | 00000000:CA:00.0 Off |                    0 |
| N/A   66C    P0   256W / 250W |   1196MiB / 40536MiB |     98%      Default |
|                               |                      |             Disabled |
+-------------------------------+----------------------+----------------------+
|   3  NVIDIA A100-PCI...  Off  | 00000000:E3:00.0 Off |                    0 |
| N/A   70C    P0   248W / 250W |   1192MiB / 40536MiB |     98%      Default |
|                               |                      |             Disabled |
+-------------------------------+----------------------+----------------------+

+-----------------------------------------------------------------------------+
| MIG devices:                                                                |
+------------------+----------------------+-----------+-----------------------+
| GPU  GI  CI  MIG |         Memory-Usage |        Vol|         Shared        |
|      ID  ID  Dev |           BAR1-Usage | SM     Unc| CE  ENC  DEC  OFA  JPG|
|                  |                      |        ECC|                       |
|==================+======================+===========+=======================|
|  0    1   0   0  |   8860MiB / 20096MiB | 56      0 |  4   0    2    0    0 |
|                  |      3MiB / 32767MiB |           |                       |
+------------------+----------------------+-----------+-----------------------+
|  0    5   0   1  |   8542MiB /  9984MiB | 28      0 |  2   0    1    0    0 |
|                  |     10MiB / 16383MiB |           |                       |
+------------------+----------------------+-----------+-----------------------+
|  0   13   0   2  |      3MiB /  4864MiB | 14      0 |  1   0    0    0    0 |
|                  |      0MiB /  8191MiB |           |                       |
+------------------+----------------------+-----------+-----------------------+
|  1    1   0   0  |  12878MiB / 20096MiB | 42      0 |  3   0    2    0    0 |
|                  |      2MiB / 32767MiB |           |                       |
+------------------+----------------------+-----------+-----------------------+
|  1    2   0   1  |   8828MiB / 20096MiB | 42      0 |  3   0    2    0    0 |
|                  |      8MiB / 32767MiB |           |                       |
+------------------+----------------------+-----------+-----------------------+

+-----------------------------------------------------------------------------+
| Processes:                                                                  |
|  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
|        ID   ID                                                   Usage      |
|=============================================================================|
|    0    1    0      53943      C   python3                          8841MiB |
|    0    5    0      51237      C   ...soft/anaconda3/bin/python     8531MiB |
|    1    1    0      23178      C   python3                         12863MiB |
|    1    2    0      18634      C   python3                          8813MiB |
|    2   N/A  N/A      5557      C   ...6_64-multicore-CUDA/namd3     1193MiB |
|    3   N/A  N/A     28518      C   ...6_64-multicore-CUDA/namd3     1189MiB |
+-----------------------------------------------------------------------------+
```

## References
- [`sbatch` command](https://slurm.schedmd.com/sbatch.html)
- [Apptainer/Singularity](https://apptainer.org/)