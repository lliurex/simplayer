<html>
<head>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
</head>
<body>
<script>
$(function() {
    "use strict";

    var webglVersion = window.location.search.indexOf('v=2') > 0 ? 2 : 1;

    var report = {
        platform: navigator.platform,
        userAgent: navigator.userAgent,
        webglVersion: webglVersion
    };

    if ((webglVersion === 2 && !window.WebGL2RenderingContext) ||
        (webglVersion === 1 && !window.WebGLRenderingContext)) {
        // The browser does not support WebGL
        window.location.href='/home?gltest=no'
        return;
    }

    var canvas = $('<canvas />', { width: '1', height: '1' }).appendTo('body');
    var gl = canvas[0].getContext('webgl', { stencil: true });
    canvas.remove();

    if (!gl) {
        // The browser supports WebGL, but initialization failed
        window.location.href='/home?gltest=no'
        return;
    }
    debugger;
    window.location.href='/home?gltest=yes'
    return
});
</script>
</body>
</html>
