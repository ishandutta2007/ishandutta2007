import re
import urllib.request
import ssl
import sys

ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

try:
    with open('README.md', 'r', encoding='utf-8') as f:
        content = f.read()

    sec1_start = content.find('# 💻 My favorite tools and technologies')
    sec1_end = content.find('## Languages and Tools')
    sec1 = content[sec1_start:sec1_end] if sec1_start != -1 and sec1_end != -1 else ""

    sec2_start = content.find('## Languages and Tools')
    sec2_end = content.find('# 📊 GitHub Stats:')
    sec2 = content[sec2_start:sec2_end] if sec2_start != -1 and sec2_end != -1 else ""

    urls = re.findall(r'src=\"(https?://[^\"]+)\"', sec1 + sec2)
    broken = []
    
    for url in set(urls):
        try:
            req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
            res = urllib.request.urlopen(req, context=ctx, timeout=5)
            if res.status >= 400:
                broken.append(url)
        except Exception as e:
            broken.append(url)
            print(f'Error checking {url}: {e}')

    print('Broken URLs:')
    for b in broken:
        print(b)
except Exception as e:
    print("Script Error:", e)
