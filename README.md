# copenheimer-masscan-fork-patches

See `auto.sh` to generate the source code using the patch files. It will clone the masscan source code from the commit `7b3f6227682f1e12e9eec0cd74b18c503e2e69e4` and apply the following patches.

- `1-format.patch` - beautifies the code using prettifier
- `2-delete.patch` - deletes useless files that can be omitted
- `3-main.patch` - the main patch with all the modified code to masscan

## Usage

Update your pages and install the required packages:

```sh
sudo apt update
sudo apt install git build-essential cmake -y
```

Run the bash script:

```sh
./auto.sh
```
