<!DOCTYPE html>
<html>
<head>
<script src="{{ html.rufflepath }}"></script>
<script>
    window.RufflePlayer = window.RufflePlayer || {};
    window.RufflePlayer.config = {
        "autoplay": "on",
        "scale": "showAll",
        "quality": "high",
        "unmuteOverlay": "hidden",
        "letterbox": "fullscreen",
    }
    window.addEventListener("load", (event) => {
        const ruffle = window.RufflePlayer.newest()
        const player = ruffle.createPlayer()
        document.body.appendChild(player)
        player.load("{{ html.swf }}");
        let items = ['html','body','ruffle-player']
        for (let i in items){
            document.getElementsByTagName(items[i])[0].style.width = "100%"
            document.getElementsByTagName(items[i])[0].style.height = "100%"
        }
    });
</script>
</head>
<body>
</body>
</html>
