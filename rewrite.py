import re

with open('README.md', 'r', encoding='utf-8') as f:
    content = f.read()

table_start = content.find('<div style="display: flex; align-items: flex-start; align: center">')
table_end = content.find('</div>', table_start) + 6

items = [
    # Row 1
    ('TensorFlow', 'https://skillicons.dev/icons?i=tensorflow'),
    ('Python', 'https://techstack-generator.vercel.app/python-icon.svg', 'macropower-tech'),
    ('JavaScript', 'https://techstack-generator.vercel.app/js-icon.svg'),
    ('C++', 'https://techstack-generator.vercel.app/cpp-icon.svg'),
    ('PyTorch', 'https://skillicons.dev/icons?i=pytorch'),
    ('MySQL', 'https://techstack-generator.vercel.app/mysql-icon.svg'),
    ('TypeScript', 'https://techstack-generator.vercel.app/ts-icon.svg'),
    ('AWS', 'https://techstack-generator.vercel.app/aws-icon.svg'),
    ('C#', 'https://techstack-generator.vercel.app/csharp-icon.svg'),
    
    # Row 2
    ('Scikit-learn', 'https://upload.wikimedia.org/wikipedia/commons/0/05/Scikit_learn_logo_small.svg'),
    ('Github', 'https://techstack-generator.vercel.app/github-icon.svg'),
    ('Git', 'https://user-images.githubusercontent.com/25181517/192108372-f71d70ac-7ae6-4c0d-8395-51d8870c2ef0.png'),
    ('Keras', 'https://upload.wikimedia.org/wikipedia/commons/a/ae/Keras_logo.svg'),
    ('Pandas', 'https://upload.wikimedia.org/wikipedia/commons/e/ed/Pandas_logo.svg'),
    ('NumPy', 'https://upload.wikimedia.org/wikipedia/commons/3/31/NumPy_logo_2020.svg'),
    ('OpenCV', 'https://skillicons.dev/icons?i=opencv'),
    ('Hugging Face', 'https://huggingface.co/front/assets/huggingface_logo-noborder.svg'),
    ('Jupyter', 'https://upload.wikimedia.org/wikipedia/commons/3/38/Jupyter_logo.svg'),

    # Row 3
    ('MongoDB', 'https://skillicons.dev/icons?i=mongodb'),
    ('Nodejs', 'https://skillicons.dev/icons?i=nodejs'),
    ('Matplotlib', 'https://upload.wikimedia.org/wikipedia/commons/8/84/Matplotlib_icon.svg'),
    ('VsCode', 'https://skillicons.dev/icons?i=vscode'),
    ('OpenAI', 'https://upload.wikimedia.org/wikipedia/commons/0/04/ChatGPT_logo.svg'),
    ('GraphQL', 'https://skillicons.dev/icons?i=graphql'),
    ('PostgreSQL', 'https://skillicons.dev/icons?i=postgres'),
    
    # New ones from Languages and Tools
    ('Seaborn', 'https://seaborn.pydata.org/_static/logo-mark-lightbg.svg'),
    ('C', 'https://profilinator.rishav.dev/skills-assets/c-original.svg'),
    
    # Row 4
    ('Docker', 'https://profilinator.rishav.dev/skills-assets/docker-original-wordmark.svg'),
    ('SciPy', 'https://upload.wikimedia.org/wikipedia/commons/b/b2/SCIPY_2.svg'),
    ('Kubernetes', 'https://profilinator.rishav.dev/skills-assets/kubernetes-icon.svg'),
    ('Bash', 'https://profilinator.rishav.dev/skills-assets/gnu_bash-icon.svg'),
    ('Raspberry Pi', 'https://profilinator.rishav.dev/skills-assets/raspberrypi.png'),
    ('XGBoost', 'https://upload.wikimedia.org/wikipedia/commons/6/69/XGBoost_logo.png'),
    ('LightGBM', 'https://raw.githubusercontent.com/microsoft/LightGBM/master/docs/logo/LightGBM_logo_black_text.svg'),
    ('Linux', 'https://profilinator.rishav.dev/skills-assets/linux-original.svg'),
    ('CatBoost', 'https://catboost.ai/favicon.svg'),
    
    # Row 5
    ('Jenkins', 'https://profilinator.rishav.dev/skills-assets/jenkins-icon.svg'),
    ('Firebase', 'https://profilinator.rishav.dev/skills-assets/firebase.png'),
    ('Arduino', 'https://profilinator.rishav.dev/skills-assets/arduino.png'),
    ('GCP', 'https://profilinator.rishav.dev/skills-assets/google_cloud-icon.svg'),
    ('.NET', 'https://profilinator.rishav.dev/skills-assets/dot-net-original-wordmark.svg'),
    ('Chainer', 'https://chainer.org/images/logo.png'),
    ('TensorRT', 'https://upload.wikimedia.org/wikipedia/en/b/b9/Nvidia_CUDA_Logo.jpg'),
    ('Java', 'https://profilinator.rishav.dev/skills-assets/java-original-wordmark.svg'),
    ('Android', 'https://profilinator.rishav.dev/skills-assets/android-original-wordmark.svg'),
    
    # Row 6
    ('PowerShell', 'https://profilinator.rishav.dev/skills-assets/powershell.png'),
    ('Azure', 'https://profilinator.rishav.dev/skills-assets/microsoft_azure-icon.svg'),
    ('Apache Spark', 'https://upload.wikimedia.org/wikipedia/commons/f/f3/Apache_Spark_logo.svg'),
    ('GitLab', 'https://profilinator.rishav.dev/skills-assets/gitlab.svg'),
    ('Hadoop', 'https://upload.wikimedia.org/wikipedia/commons/0/0e/Hadoop_logo.svg')
]

new_table_html = '<div style="display: flex; align-items: flex-start; align: center">\n    <table align="center">\n'

for i, item in enumerate(items):
    if i % 9 == 0:
        new_table_html += '        <tr>\n'
    
    if len(item) == 2:
        name, url = item
        link = None
    else:
        name, url, link = item
        
    new_table_html += f'            <td align="center" width="96">\n'
    if link:
        new_table_html += f'                <a href="#{link}">\n'
        new_table_html += f'                    <img src="{url}" width="48" height="48" alt="{name}" />\n'
        new_table_html += f'                </a>\n'
    else:
        new_table_html += f'                <img src="{url}" width="48" height="48" alt="{name}" />\n'
    new_table_html += f'                <br>{name}\n'
    new_table_html += f'            </td>\n'
    
    if i % 9 == 8 or i == len(items) - 1:
        new_table_html += '        </tr>\n'

new_table_html += '    </table>\n    <br>\n    <br>\n</div>'

content = content[:table_start] + new_table_html + content[table_end:]

content = re.sub(r'## Languages and Tools.*?</div>\s*<br/>\s*', '', content, flags=re.DOTALL)

with open('README.md', 'w', encoding='utf-8') as f:
    f.write(content)

print("Done")
