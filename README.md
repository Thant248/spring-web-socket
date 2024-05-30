# How to Deploy  on Render Using DockerContainer
<ol>
<li>```html
    docker login</li>
<li>```html
     docker  build -t chatapp:v1.0.0 --build-arg VERSION=1.5 .</li>
<li>```html
      docker images</li>
<li>```html 
    docker tag chatapp:v1.0.0 YOURDOCKEHUBNAME/chatapp:latest
    </li>
</ol>





