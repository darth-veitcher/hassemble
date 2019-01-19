# Notes on customising Raspbian image

1. Download .zip from site
2. Extract .img file
3. Use ubuntu docker image (if on MacOS)
4. Mount and chroot

## Run docker container
```
docker run --name "builder" -v /Volumes/External/Raspbian:/data --privileged -it ubuntu bash
```
## Now mount and chroot
```
mount -o loop,offset=$((512*98304)),sizelimit=$((512*3547136)) 2018-11-13-raspbian-stretch-lite.img hass/
mount -o loop,offset=$((512*8192)),sizelimit=$((512*89854)) 2018-11-13-raspbian-stretch-lite.img hass/boot/
chroot hass
```

`gcc -v`  # confirm has arm in there