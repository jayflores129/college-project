<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <!-- <script src="https://cdn.jsdelivr.net/npm/hls.js@latest"></script> -->

  <link href="https://vjs.zencdn.net/8.0.4/video-js.css" rel="stylesheet" />
</head>
<body>

<div>
    <video
    id="my-video"
    class="video-js vjs-default-skin"
    controls
    preload="auto"
    width="640"
    height="360"
    data-setup="{}"
  >
    <source src="https://hotware.blob.core.windows.net/apps/Hotware/infos/hls/test/720p.m3u8" type="application/x-mpegURL" />
  </video>
</div>


    <!-- <script>
      var video = document.getElementById("video2");
      var videoSrc = "/college-project/hls_output/720p.m3u8"; // replace with your .m3u8 path
      if (Hls.isSupported()) {
        var hls = new Hls();
        hls.loadSource(videoSrc);
        hls.attachMedia(video);
      } else if (video.canPlayType("application/vnd.apple.mpegurl")) {
        // For Safari
        video.src = videoSrc;
      }
    </script> -->

    <!-- <script>
      var player = videojs('my-video', {
        autoplay: false,
        controls: true,
        responsive: true,
        fluid: true
      });
    </script> -->

    <script src="https://vjs.zencdn.net/8.0.4/video.min.js"></script>
</body>
</html>