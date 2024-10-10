<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Music Playlist</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1DB954;
            color: white;
            text-align: center;
        }
        .playlist {
            margin: 20px auto;
            width: 300px;
            border: 2px solid white;
            padding: 20px;
            border-radius: 10px;
            background-color: #282828;
        }
        .song {
            cursor: pointer;
            padding: 10px;
            margin: 5px 0;
            background-color: #333;
            border-radius: 5px;
        }
        .song:hover {
            background-color: #1DB954;
        }
        audio {
            margin-top: 20px;
            width: 100%;
        }
    </style>
</head>
<body>
    <h1>My Music Playlist</h1>
    <div class="playlist">
        <div class="song" onclick="playSong('song1')">Lagu 1: Chill Vibes</div>
        <div class="song" onclick="playSong('song2')">Lagu 2: Morning Sunshine</div>
        <div class="song" onclick="playSong('song3')">Lagu 3: Night Walk</div>
    </div>
    <audio id="audioPlayer" controls>
        <source id="audioSource" src="" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>

    <script>
        function playSong(song) {
            var audioPlayer = document.getElementById('audioPlayer');
            var audioSource = document.getElementById('audioSource');
            // Ganti URL berikut dengan lokasi file audio yang sesuai
            if(song === 'song1') {
                audioSource.src = 'https://example.com/song1.mp3'; // Link ke lagu pertama
            } else if (song === 'song2') {
                audioSource.src = 'https://example.com/song2.mp3'; // Link ke lagu kedua
            } else if (song === 'song3') {
                audioSource.src = 'https://example.com/song3.mp3'; // Link ke lagu ketiga
            }
            audioPlayer.load();  // Untuk memuat lagu baru
            audioPlayer.play();  // Memulai pemutaran
        }
    </script>
</body>
</html>
