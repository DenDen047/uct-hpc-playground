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

## References
- [`sbatch` command](https://slurm.schedmd.com/sbatch.html)
- [Apptainer/Singularity](https://apptainer.org/)