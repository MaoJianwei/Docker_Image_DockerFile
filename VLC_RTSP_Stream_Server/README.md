# VLC RTSP Media Stream Server

Use docker run's -v flag to mount a directory to container's /home,

and put your media file in it and rename to 'maoMedia',

Finally, VLC will automatically stream the file:  /home/maoMedia

at the expose port 5511



### Example

---------------------------------------------

You can run the container by:

sudo docker run -d -p 5511:5511 -v /home/mao/maoMedia/:/home --name maoRTSP maojianwei2020/vlc_rtsp_stream_server

/home/mao/maoMedia/ is an example directory in which you put your media file

---------------------------------------------

You can watch the media at this link:

rtsp://\<ip-address or DNS name\>:5511/

---------------------------------------------


Have a fun :)

Jianwei Mao   2016.12.23 11:30
