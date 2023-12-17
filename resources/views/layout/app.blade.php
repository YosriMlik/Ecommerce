<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://upload-widget.cloudinary.com/global/all.js" type="text/javascript"></script>
    <title>Application</title>
</head>

<body>
    <div id="app"></div>
    @vite('resources/js/app.js')
</body>

</html>
