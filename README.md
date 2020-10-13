# Demon
Build Kali Linux Docker image with kali-last-snapshot repository and kali-linux-large metapackage.

**Notice:** The script makes use of full container capabilities (`--privileged`) and opens up xhost server on the host which might be a bad idea from the security point of view. You must be held responsible for any implications that might occur due to this.

## Steps:
1. `git clone https://github.com/thirdbyte/demon-docker`
2. `cd demon-docker`
3. `chmod +x *`
4. `./build`
5. `./run`

You can run applications with GUI (Linux host only) and save important files in the `/root` directory which will persist on exiting conatiner.

That's it!
