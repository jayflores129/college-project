<?php
$videoUrl = "https://hotware.blob.core.windows.net/apps/Hotware/infos/me0ztk5nvt8n3.mp4";
$ffmpegPath = "C:\\ffmpeg\\bin\\ffmpeg.exe"; // adjust path

ini_set("max_execution_time", 0);

$outputDir = __DIR__ . "/hls_output";
if (!is_dir($outputDir)) {
    mkdir($outputDir, 0777, true);
}
// 1080p
// $cmd = "\"$ffmpegPath\" -i \"$videoUrl\" "
//      . "-vf \"scale=w=1920:h=1080:force_original_aspect_ratio=decrease\" "
//      . "-c:v h264 -profile:v main -crf 20 -preset fast "
//      . "-c:a aac -ar 48000 -b:a 128k "
//      . "-g 48 -keyint_min 48 "
//      . "-b:v 5000k -maxrate 5350k -bufsize 7500k "
//      . "-f hls -hls_time 6 -hls_playlist_type vod "
//      . "-hls_segment_filename \"$outputDir/1080p_%03d.ts\" "
//      . "$outputDir/1080p.m3u8";

// 720p
$cmd = "\"$ffmpegPath\" -i \"$videoUrl\" "
    . "-vf \"scale=w=1280:h=720:force_original_aspect_ratio=decrease\" "
    . "-c:v h264 -profile:v main -crf 20 -preset fast "
    . "-c:a aac -ar 48000 -b:a 128k "
    . "-g 48 -keyint_min 48 "
    . "-b:v 2800k -maxrate 2996k -bufsize 4200k "
    . "-f hls -hls_time 6 -hls_playlist_type vod "
    . "-hls_segment_filename \"$outputDir/720p_%03d.ts\" "
    . "$outputDir/720p.m3u8";

exec($cmd . " 2>&1", $output, $returnVar);

if ($returnVar === 0) {
    echo "✅ HLS playlist created at: $outputDir/1080p.m3u8";
} else {
    echo "❌ Error running FFmpeg\n";
    echo implode("\n", $output);
}
