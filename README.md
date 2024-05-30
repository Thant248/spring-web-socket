# How to Deploy  on Render Using DockerContainer
# Example Code Block with "Copy to Clipboard" Button

```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Copy to Clipboard Example</title>
</head>
<body>
<pre id="codeBlock">
<code>
console.log('Hello, world!');
</code>
</pre>
<button onclick="copyToClipboard()">Copy to Clipboard</button>

<script>
function copyToClipboard() {
    var code = document.getElementById('codeBlock').innerText;
    var tempInput = document.createElement('textarea');
    tempInput.value = code;
    document.body.appendChild(tempInput);
    tempInput.select();
    document.execCommand('copy');
    document.body.removeChild(tempInput);
    alert('Code copied to clipboard');
}
</script>
</body>
</html>


