
pentester.land
Open Redirect Cheat Sheet
12-15 minutes

Hi, this is a cheat sheet for Open redirect vulnerabilities.

It’s a first draft. I will update it every time I find a new payload, tip or writeup. So if you’re interested in open redirects, keep an eye on this page!

open-redirect-cheatsheet.png
Fuzzing (Detection)
Open redirect payloads

Payloads to detect open redirection:
Common injection points / parameters

/{payload}
?next={payload}
?url={payload}
?target={payload}
?rurl={payload}
?dest={payload}
?destination={payload}
?redir={payload}
?redirect_uri={payload}
?redirect_url={payload}
?redirect={payload}
/redirect/{payload}
/cgi-bin/redirect.cgi?{payload}
/out/{payload}
/out?{payload}
?view={payload}
/login?to={payload}
?image_url={payload}
?go={payload}
?return={payload}
?returnTo={payload}
?return_to={payload}
?checkout_url={payload}
?continue={payload}
?return_path={payload}

How to find entry points to test?

    Burp Proxy history & Burp Sitemap (look at URLs with parameters)
    Google dorking. E.g: inurl:redirectUrl=http site:target.com
    Functionalities usually associated with redirects:
        Login, Logout, Register & Password reset pages
        Change site language
        Links in emails
    Read JavaScript code
    Bruteforcing
        Look for hidden redirect parameters, for e.g.:
        /redirect?url={payload}&next={payload}&redirect={payload}&redir={payload}&rurl={payload}&redirect_uri={payload}
        /?url={payload}&next={payload}&redirect={payload}&redir={payload}&rurl={payload}&redirect_uri={payload}

Responses to look for when fuzzing

    HTTP redirect status codes
        300 Multiple Choices
        301 Moved Permanently
        302 Found
        303 See Other
        304 Not Modified
        305 Use Proxy
        307 Temporary Redirect
        308 Permanent Redirect
    Alert box popping up

Tips

    Try using the same parameter twice: ?next=whitelisted.com&next=google.com
    If periods filtered, use an IPv4 address in decimal notation http://www.geektools.com/geektools-cgi/ipconv.cgi
    Try a double-URL and triple-URL encoded version of payloads
    Try redirecting to an IP address (instead of a domain) using different notations: IPv6, IPv4 in decimal, hex or octal
    For XSS, try replacing alert(1) with prompt(1) & confirm(1)
    If extension checked, try ?image_url={payload}/.jpg
    Try target.com/?redirect_url=.uk (or [any_param]=.uk). If it redirects to target.com.uk, then it’s vulnerable! target.com.uk and target.com are different domains.
    Use /U+e280 RIGHT-TO-LEFT OVERRIDE: https://[email protected]%E2%80%[email protected]
        The unicode character U+202E changes all subsequent text to be right-to-left
        E.g.: https://hackerone.com/reports/299403

    Burp Intruder & Burp Repeater
    open-redirect-scanner
    Dirsearch with an open redirect payloads list (instead of the default list, or combined)

Exploitation

    Phishing
    Chaining open redirect with
        SSRF
        OAuth token disclosure
        XSS
        CRLF injection

Resources

    https://github.com/cujanovic/Open-Redirect-Payloads
    https://github.com/ak1t4/open-redirect-scanner/blob/master/payloads.list
    https://github.com/fuzzdb-project/fuzzdb/tree/master/attack/redirect
    https://github.com/EdOverflow/bugbounty-cheatsheet/blob/master/cheatsheets/open-redirect.md
    https://www.hahwul.com/p/ssrf-open-redirect-cheat-sheet.html
    https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/Open%20redirect
    https://zseano.com/tutorials/1.html
    https://github.com/random-robbie/open-redirect
    https://s0cket7.com/open-redirect-vulnerability/
    https://medium.com/bugbountywriteup/cvv-2-open-redirect-213555765607
    https://sites.google.com/site/bughunteruniversity/best-reports/openredirectsthatmatter

Open redirect writeups

    Look for “Open redirect” (with Ctrl+f) in our List of bug bounty writeups

    [CVE-2017-5871] Odoo: URL redirection to distrusted site (open redirect)
    Hackerone report 158434: Open Redirect & XSS on Shopify, $1,000
    Hackerone report 101962: Open Redirect on Shopify, $500
    Hackerone report 55546: Open Redirect on Shopify, $500
    Hackerone report 55525: Open Redirect on Shopify, $500
    Hackerone report 169759: Open Redirect on Shopify, $500
    Hackerone report 160047: Open Redirect on Shopify, $500
    Hackerone report 103772: Open Redirect on Shopify, $500
    Hackerone report 159522: Open Redirect on Shopify, $500
    Hackerone report 226408: Open Redirect on Shopify
    Hackerone report 405697: Open Redirect on Shopify
    Hackerone report 103772: Open Redirect on Shopify
    Hackerone report 153652: Open Redirect on Shopify
    Hackerone report 175168: Open Redirect on Shopify
    Hackerone report 188266: Open Redirect on Shopify
    Hackerone report 56662: Open redirect & XSS on Shopify
    Hackerone report 165046: Open Redirect on Shopify
    Hackerone report 196846: Open Redirect & XSS on Starbucks, $375
    Hackerone report 158034: Open redirect & XSS via SVG on Trello
    Hackerone report 45513: Open redirect on Trello, $64
    Hackerone report 292825: Open redirect on Ed / Github
    Hackerone report 44425: Open redirect on Facebook
    Hackerone report 165136: Open redirect on Mapbox
    Hackerone report 114529: Open redirect & Content spoofing on Mapbox, $200
    Hackerone report 143240: Open redirect & XSS on Mapbox
    Hackerone report 177624: Open redirect, XSS & CRLF on Badoo
    Hackerone report 99435: Open redirect & OAuth token theft on Badoo, $153
    Hackerone report 108113: Open redirect on Twitter
    Hackerone report 50752: Open redirect on Twitter
    Hackerone report 108113: Open redirect on Twitter
    Hackerone report 246897: Open redirect on Twitter
    Hackerone report 283460: Open redirect on Twitter, $280
    Hackerone report 246897: Open redirect on Twitter, $420
    Hackerone report 260744: Open redirect & XSS on Twitter, $1,120
    Hackerone report 49759: Open redirect & OAuth token thef on Twitter, $1,400
    Hackerone report 39631: Open redirect on Twitter, $280
    Hackerone report 131202: Open redirect & OAuth token theft on Twitter
    Hackerone report 6017: Open redirect & OAuth token theft on Slack
    Hackerone report 4549: Open redirect on Slack
    Hackerone report 2622: Open redirect on Slack
    Hackerone report 6035: Open redirect on Slack
    Hackerone report 2731: Open redirect on Slack
    Hackerone report 104087: Open redirect on Slack, $1,000
    Hackerone report 16718: Open redirect on Slack, $100
    Hackerone report 243474: Open redirect on Inflection, $750
    Hackerone report 189726: Open redirect on HackerOne
    Hackerone report 124620: Open redirect on HackerOne
    Hackerone report 296706: Open redirect on HackerOne
    Hackerone report 171398: Open redirect, CSRF & Self XSS on HackerOne
    Hackerone report 23386: Open redirect on HackerOne, $500
    Hackerone report 111968: Open redirect on HackerOne, $500
    Hackerone report 178345: Open redirect on HackerOne
    Hackerone report 27987: Open redirect on HackerOne, $500
    Hackerone report 28865: Open redirect on HackerOne
    Hackerone report 320376: Open redirect on HackerOne, $250
    Hackerone report 299403: Open redirect on HackerOne, $500
    Hackerone report 57163: Open redirect on HackerOne, $500
    Hackerone report 119236: Open redirect on Uber
    Hackerone report 125000: Open redirect on Uber, $500
    Hackerone report 125791: Open redirect on Uber, $3,000
    Hackerone report 126203: Open redirect & Cryptographic weakness on Uber, $500
    Hackerone report 22142: Open redirect on Automattic
    Hackerone report 129091: Open redirect on Automattic, $75
    Hackerone report 191387: Open redirect & XSS on LocalTapiola
    Hackerone report 179328: Open redirect on LocalTapiola, $400
    Hackerone report 87027: Open redirect on Keybase, $500
    Hackerone report 309058: Open redirect on Wordpress, $50
    Hackerone report 277502: Open redirect on Wordpress, $275
    Hackerone report 387007: Open redirect on TTS Bug Bounty, $150
    Hackerone report 411723: Open redirect on Chaturbate, $200
    Hackerone report 413426: Open redirect on Chaturbate, $250
    Hackerone report 400982: Open redirect on Chaturbate, $250
    Hackerone report 203726: Open redirect on Greenhouse.io, $100
    Hackerone report 261592: Open redirect on Whisper, $30
    Hackerone report 355758: Open redirect on PullString, $200
    Hackerone report 288219: Open redirect on Moneybird, $50
    Hackerone report 38157: Open redirect on QIWI, $150
    Hackerone report 113112: Open redirect on Paragon Initiative Enterprises, $50
    Hackerone report 179568: Open redirect on Open-Xchange, $666
    Hackerone report 76738: Open redirect on Zaption, $25
    Hackerone report 45516: Open redirect on Zaption
    Hackerone report 178278: Open redirect & XSS on Informatica
    Hackerone report 123625: Open redirect & XSS on Informatica
    Hackerone report 14699: Open redirect on WePay
    Hackerone report 20661: Open redirect on WePay
    Hackerone report 3596: OAuth token theft via Open redirect on Phabricator
    Hackerone report 25160: OAuth token theft via Open redirect on Phabricator
    Hackerone report 6564: Open redirect on Khan Academy
    Hackerone report 6357: Open redirect on Khan Academy
    Hackerone report 145306: Open redirect on Veris
    Hackerone report 44157: Open redirect on Vimeo
    Hackerone report 11209: Open redirect on Meteor
    Hackerone report 131082: Open redirect on ownCloud
    Hackerone report 143265: Open redirect on Zomato
    Hackerone report 91332: Open redirect on Imgur
    Hackerone report 151831: Open redirect on Gratipay
    Hackerone report 12949: Open redirect on Urban Dictionary
    Hackerone report 12964: Open redirect on Urban Dictionary
    Hackerone report 268245: Open redirect & XSS on Mail.Ru
    Hackerone report 192373: Open redirect on Mail.Ru
    Hackerone report 87804: Open redirect on Mail.Ru
    Hackerone report 244721: Open redirect on Mail.Ru
    Hackerone report 210384: Open redirect on Mail.Ru
    Hackerone report 37593: Open redirect on Sucuri
    Hackerone report 2989: Open redirect on OkCupid
    Hackerone report 359453: Open redirect on Passit
    Hackerone report 163124: Open redirect on Skyliner
    Hackerone report 291750: Open redirect on Valve
    Hackerone report 193027: Open redirect on Cloudflare
    Hackerone report 215970: Open redirect on GitLab
    Hackerone report 214034: Open redirect on GitLab
    Hackerone report 39198: Open redirect on C2FO
    Hackerone report 50379: Open redirect & XSS on Adobe
    Hackerone report 238117: Open redirect on Weblate
    Hackerone report 224317: Open redirect on Weblate
    Hackerone report 223718: Open redirect on Weblate
    Hackerone report 223326: Open redirect on Weblate
    Hackerone report 243062: Open redirect on Arxius
    Hackerone report 207431: Open redirect on Yelp
    Hackerone report 211213: Open redirect on Nextcloud
    Hackerone report 2414: Open redirect on RelateIQ
    Hackerone report 172746: Open redirect on WebSummit
    Hackerone report 239503: Open redirect & authentication token disclosure on Maximum, $350

Let me know if you have any comments, requests, questions… Feedback is always welcome.

See you next time!port 128910: Open redirect on Gratipay
    Hackerone report 48065: Open redirect & OAuth token theft on Coinbase
    Hackerone report 127741: Open redirect on New Relic
    Hackerone report 132251: Open redirect & XSS on New Relic
    Hackerone report 116315: Open redirect on New Relic
    Hackerone report 144525: Open redirect on New Relic
    Hackerone report 131552: Open redirect on New Relic
    Hackerone report 177485: Open redirect on New Relic
    Hackerone report 207505: Open redirect on New Relic
    Hackerone report 207285: Open redirect on New Relic
    Hackerone report 157813: Open redirect & XSS on OLX
    Hackerone report 167107: Open redirect & XSS on OLX
    Hackerone report 405100: Open redirect & OAuth token theft on BOHEMIA INTERACTIVE a.s.
    Hackerone report 236599: Open redirect on ExpressionEngine
    Hackerone report 316319: Open redirect & XSS on SEMrush
    Hackerone report 360797: Open redirect & XSS on Liberapay
    Hackerone report 266688: Open redirect & XSS on Razer US
    Hackerone report 270028: Open redirect & XSS on Razer US
    Hackerone report 266355: Open redirect on Razer US
    Hackerone report 220737: Open redirect on Mavenlink
    Hackerone report 77221: Open redirect on Mavenlink
    Hackerone report 25334: Open redirect on Square
    Hackerone report 12949: Open redirect on Urban Dictionary
    Hackerone report 12964: Open redirect on Urban Dictionary
    Hackerone report 268245: Open redirect & XSS on Mail.Ru
    Hackerone report 192373: Open redirect on Mail.Ru
    Hackerone report 87804: Open redirect on Mail.Ru
    Hackerone report 244721: Open redirect on Mail.Ru
    Hackerone report 210384: Open redirect on Mail.Ru
    Hackerone report 37593: Open redirect on Sucuri
    Hackerone report 2989: Open redirect on OkCupid
    Hackerone report 359453: Open redirect on Passit
    Hackerone report 163124: Open redirect on Skyliner
    Hackerone report 291750: Open redirect on Valve
    Hackerone report 193027: Open redirect on Cloudflare
    Hackerone report 215970: Open redirect on GitLab
    Hackerone report 214034: Open redirect on GitLab
    Hackerone report 39198: Open redirect on C2FO
    Hackerone report 50379: Open redirect & XSS on Adobe
    Hackerone report 238117: Open redirect on Weblate
    Hackerone report 224317: Open redirect on Weblate
    Hackerone report 223718: Open redirect on Weblate
    Hackerone report 223326: Open redirect on Weblate
    Hackerone report 243062: Open redirect on Arxius
    Hackerone report 207431: Open redirect on Yelp
    Hackerone report 211213: Open redirect on Nextcloud
    Hackerone report 2414: Open redirect on RelateIQ
    Hackerone report 172746: Open redirect on WebSummit
    Hackerone report 239503: Open redirect & authentication token disclosure on Maximum, $350

Let me know if you have any comments, requests, questions… Feedback is always welcome.

See you next time!port 7900: Open redirect & OAuth token theft on Respondly
    Hackerone report 244958: Open redirect & OAuth token theft on WakaTime
    Hackerone report 405100: Open redirect & OAuth token theft on BOHEMIA INTERACTIVE a.s.
    Hackerone report 236599: Open redirect on ExpressionEngine
    Hackerone report 316319: Open redirect & XSS on SEMrush
    Hackerone report 360797: Open redirect & XSS on Liberapay
    Hackerone report 266688: Open redirect & XSS on Razer US
    Hackerone report 270028: Open redirect & XSS on Razer US
    Hackerone report 266355: Open redirect on Razer US
    Hackerone report 220737: Open redirect on Mavenlink
    Hackerone report 77221: Open redirect on Mavenlink
    Hackerone report 25334: Open redirect on Square
    Hackerone report 12949: Open redirect on Urban Dictionary
    Hackerone report 12964: Open redirect on Urban Dictionary
    Hackerone report 268245: Open redirect & XSS on Mail.Ru
    Hackerone report 192373: Open redirect on Mail.Ru
    Hackerone report 87804: Open redirect on Mail.Ru
    Hackerone report 244721: Open redirect on Mail.Ru
    Hackerone report 210384: Open redirect on Mail.Ru
    Hackerone report 37593: Open redirect on Sucuri
    Hackerone report 2989: Open redirect on OkCupid
    Hackerone report 359453: Open redirect on Passit
    Hackerone report 163124: Open redirect on Skyliner
    Hackerone report 291750: Open redirect on Valve
    Hackerone report 193027: Open redirect on Cloudflare
    Hackerone report 215970: Open redirect on GitLab
    Hackerone report 214034: Open redirect on GitLab
    Hackerone report 39198: Open redirect on C2FO
    Hackerone report 50379: Open redirect & XSS on Adobe
    Hackerone report 238117: Open redirect on Weblate
    Hackerone report 224317: Open redirect on Weblate
    Hackerone report 223718: Open redirect on Weblate
    Hackerone report 223326: Open redirect on Weblate
    Hackerone report 243062: Open redirect on Arxius
    Hackerone report 207431: Open redirect on Yelp
    Hackerone report 211213: Open redirect on Nextcloud
    Hackerone report 2414: Open redirect on RelateIQ
    Hackerone report 172746: Open redirect on WebSummit
    Hackerone report 239503: Open redirect & authentication token disclosure on Maximum, $350

Let me know if you have any comments, requests, questions… Feedback is always welcome.

See you next time!
