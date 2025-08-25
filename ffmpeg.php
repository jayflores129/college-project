<?php
// Remote video URL
$videoUrl = "https://hotware.blob.core.windows.net/apps/Hotware/infos/me0ztk5nvt8n3.mp4";

$ffmpegPath = "C:\\ffmpeg\\bin\\ffmpeg.exe"; // adjust path

ini_set("max_execution_time", 0);

// Output folder
$outputDir = __DIR__ . "/hls_output";
if (!is_dir($outputDir)) {
    mkdir($outputDir, 0777, true);
}

// Output playlist file
$outputFile = $outputDir . "/output.m3u8";

// Build FFmpeg command
$cmd = "\"$ffmpegPath\" -i \"$videoUrl\" -codec copy -start_number 0 -hls_time 10 -hls_list_size 0 -f hls \"$outputFile\"";

// Run FFmpeg
exec($cmd, $output, $returnVar);

// Check result
if ($returnVar === 0) {
    echo "✅ HLS playlist created at: $outputFile";
} else {
    echo "❌ Error running FFmpeg\n";
    print_r($output);
}

