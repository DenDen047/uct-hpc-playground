# uct-hpc-playground

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

## References
- [`sbatch` command](https://slurm.schedmd.com/sbatch.html)
- [Apptainer/Singularity](https://apptainer.org/)