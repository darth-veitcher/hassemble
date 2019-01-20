# Notes on customising Raspbian image

1. Download .zip from site
2. Extract .img file
3. Use ubuntu docker image (if on MacOS)
4. Mount and chroot

## Run docker container
```
# Mount the host folder (e.g. Raspbian) where the .img is into the 
# /data folder in the container
docker run --name "builder" -v /Volumes/External/Raspbian:/data --privileged -it ubuntu bash
```
## Now mount and chroot
```
# To double check sector sizes and partitions in the img can use
# fdisk to print out. We're mounting into a folder in the host called
# `hass` to do the chroot and build.
mount -o loop,offset=$((512*98304)),sizelimit=$((512*3547136)) 2018-11-13-raspbian-stretch-lite.img hass/
mount -o loop,offset=$((512*8192)),sizelimit=$((512*89854)) 2018-11-13-raspbian-stretch-lite.img hass/boot/
chroot hass
```

Once in the chroot run `gcc -v` and confirm the printout confirm has `arm` in there.