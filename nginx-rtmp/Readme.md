# Mao Nginx server with RTMP module - Docker image

## Usage
 
Setup container:
```
mkdir -p /home/user/n5/conf
mkdir -p /home/user/n5/log
mkdir -p /home/user/n5/live

cp -rf ./conf/* /home/user/n5/conf

sudo docker run -idt \
	-v /home/user/n5/conf:/nginx-conf/ \
	-v /home/user/n5/log:/nginx-log/ \
	-v /home/user/n5/live:/nginx-live-hls/ \
	-p <watch-port>:80 \
	-p <rtmp-port>:1935 \
	--name nginx-rtmp \
	maojianwei2020/nginx-rtmp:1.0
```
Push USB camera stream:
```
ffmpeg -y -i /dev/video0 -vcodec libx264 -f flv rtmp://<rtmp-ip>:<rtmp-port>/hls/camera
```
## Update Notes
### Release 1.0
1. Receive RTMP live stream.
2. Enable to watch HLS live.
3. Transcode live stream to MP4.
4. Save mp4 records.
5. Enable to watch mp4 records.
