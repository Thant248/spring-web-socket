# How to Deploy  on Render Using DockerContainer
<ol>
  <li><code>docker login</code></li>
  <li><code>docker build -t chatapp:v1.0.0 --build-arg VERSION=1.5 .</code></li>
  <li><code>docker images</code></li>
  <li><code>docker tag chatapp:v1.0.0 YOURDOCKERHUBNAME/chatapp:latest</code></li>
  <li><code>docker push YOURDOCKERHUBNAME/chatapp:latest</code></li>
</ol>






