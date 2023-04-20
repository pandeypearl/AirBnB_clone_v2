# 0x04. AirBnB clone - Web framework

## Tasks

### 0. Hello Flask!
Write a script that starts a Flask web application:

<ul>
<li>Your web application must be listening on 0.0.0.0, port 5000</li>
<li>Routes: <ul><li>/: display “Hello HBNB!”</li></ul></li>
<li>You must use the option strict_slashes=False in your route definition</li>
</ul>

<pre><code>
guillaume@ubuntu:~/AirBnB_v2$ python3 -m web_flask.0-hello_route
* Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
....
</code></pre>

In another tab:

<pre><code>
guillaume@ubuntu:~$ curl 0.0.0.0:5000 ; echo "" | cat -e
Hello HBNB!$
guillaume@ubuntu:~$
</code></pre>

### 1. HBNB
Write a script that starts a Flask web application:

<ul>
<li>Your web application must be listening on 0.0.0.0, port 5000</li>
<li>Routes: <ul><li>/: display “Hello HBNB!”</li><li>/hbnb: display “HBNB”</li></ul></li>
<li>ou must use the option strict_slashes=False in your route definition</li>
</ul>

<pre><code>
guillaume@ubuntu:~/AirBnB_v2$ python3 -m web_flask.1-hbnb_route
* Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
....
</code></pre>

In another tab:

<pre><code>
guillaume@ubuntu:~$ curl 0.0.0.0:5000/hbnb ; echo "" | cat -e
HBNB$
guillaume@ubuntu:~$
</code></pre>

