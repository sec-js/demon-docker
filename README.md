# Demon
Build Kali Linux Docker image with kali-last-snapshot repository and kali-linux-large metapackage.

## Steps:
1. `git clone https://github.com/thirdbyte/demon-docker`
2. `cd demon-docker`
3. `chmod +x *`
4. `./build`
5. `./run`

You can run applications with GUI (Linux host only) and save important files in the `/root` directory which will persist on exiting conatiner. You can access it from host by navigating to `/home/demon`.

That's it!
