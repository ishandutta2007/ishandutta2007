$content = Get-Content -Raw -Path README.md

$newTable = @'
<div style="display: flex; align-items: flex-start; align: center">
    <table align="center">
        <tr>
            <td align="center" width="96">
                <img src="https://skillicons.dev/icons?i=tensorflow" width="48" height="48" alt="TensorFlow" />
                <br>TensorFlow
            </td>
            <td align="center" width="96">
                <a href="#macropower-tech">
                    <img src="https://techstack-generator.vercel.app/python-icon.svg" width="48" height="48" alt="Python" />
                </a>
                <br>Python
            </td>
            <td align="center" width="96">
                <img src="https://techstack-generator.vercel.app/js-icon.svg" width="48" height="48" alt="JavaScript" />
                <br>JavaScript
            </td>
            <td align="center" width="96">
                <img src="https://techstack-generator.vercel.app/cpp-icon.svg" width="48" height="48" alt="C++" />
                <br>C++
            </td>
            <td align="center" width="96">
                <img src="https://skillicons.dev/icons?i=pytorch" width="48" height="48" alt="PyTorch" />
                <br>PyTorch
            </td>
            <td align="center" width="96">
                <img src="https://techstack-generator.vercel.app/mysql-icon.svg" width="48" height="48" alt="MySQL" />
                <br>MySQL
            </td>
            <td align="center" width="96">
                <img src="https://techstack-generator.vercel.app/ts-icon.svg" width="48" height="48" alt="TypeScript" />
                <br>TypeScript
            </td>
            <td align="center" width="96">
                <img src="https://techstack-generator.vercel.app/aws-icon.svg" width="48" height="48" alt="AWS" />
                <br>AWS
            </td>
            <td align="center" width="96">
                <img src="https://techstack-generator.vercel.app/csharp-icon.svg" width="48" height="48" alt="C#" />
                <br>C#
            </td>
        </tr>
        <tr>
            <td align="center" width="96">
                <img src="https://upload.wikimedia.org/wikipedia/commons/0/05/Scikit_learn_logo_small.svg" width="48" height="48" alt="Scikit-learn" />
                <br>Scikit-learn
            </td>
            <td align="center" width="96">
                <img src="https://techstack-generator.vercel.app/github-icon.svg" width="48" height="48" alt="Github" />
                <br>Github
            </td>
            <td align="center" width="96">
                <img src="https://user-images.githubusercontent.com/25181517/192108372-f71d70ac-7ae6-4c0d-8395-51d8870c2ef0.png" width="48" height="48" alt="Git" />
                <br>Git
            </td>
            <td align="center" width="96">
                <img src="https://upload.wikimedia.org/wikipedia/commons/a/ae/Keras_logo.svg" width="48" height="48" alt="Keras" />
                <br>Keras
            </td>
            <td align="center" width="96">
                <img src="https://upload.wikimedia.org/wikipedia/commons/e/ed/Pandas_logo.svg" width="48" height="48" alt="Pandas" />
                <br>Pandas
            </td>
            <td align="center" width="96">
                <img src="https://upload.wikimedia.org/wikipedia/commons/3/31/NumPy_logo_2020.svg" width="48" height="48" alt="NumPy" />
                <br>NumPy
            </td>
            <td align="center" width="96">
                <img src="https://skillicons.dev/icons?i=opencv" width="48" height="48" alt="OpenCV" />
                <br>OpenCV
            </td>
            <td align="center" width="96">
                <img src="https://huggingface.co/front/assets/huggingface_logo-noborder.svg" width="48" height="48" alt="Hugging Face" />
                <br>Hugging Face
            </td>
            <td align="center" width="96">
                <img src="https://upload.wikimedia.org/wikipedia/commons/3/38/Jupyter_logo.svg" width="48" height="48" alt="Jupyter" />
                <br>Jupyter
            </td>
        </tr>
        <tr>
            <td align="center" width="96">
                <img src="https://skillicons.dev/icons?i=mongodb" width="48" height="48" alt="MongoDB" />
                <br>MongoDB
            </td>
            <td align="center" width="96">
                <img src="https://skillicons.dev/icons?i=nodejs" width="48" height="48" alt="Nodejs" />
                <br>Nodejs
            </td>
            <td align="center" width="96">
                <img src="https://upload.wikimedia.org/wikipedia/commons/8/84/Matplotlib_icon.svg" width="48" height="48" alt="Matplotlib" />
                <br>Matplotlib
            </td>
            <td align="center" width="96">
                <img src="https://skillicons.dev/icons?i=vscode" width="48" height="48" alt="VsCode" />
                <br>VsCode
            </td>
            <td align="center" width="96">
                <img src="https://upload.wikimedia.org/wikipedia/commons/0/04/ChatGPT_logo.svg" width="48" height="48" alt="OpenAI" />
                <br>OpenAI
            </td>
            <td align="center" width="96">
                <img src="https://skillicons.dev/icons?i=graphql" width="48" height="48" alt="GraphQL" />
                <br>GraphQL
            </td>
            <td align="center" width="96">
                <img src="https://skillicons.dev/icons?i=postgres" width="48" height="48" alt="PostgreSQL" />
                <br>PostgreSQL
            </td>
            <td align="center" width="96">
                <img src="https://seaborn.pydata.org/_static/logo-mark-lightbg.svg" width="48" height="48" alt="Seaborn" />
                <br>Seaborn
            </td>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/c-original.svg" width="48" height="48" alt="C" />
                <br>C
            </td>
        </tr>
        <tr>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/docker-original-wordmark.svg" width="48" height="48" alt="Docker" />
                <br>Docker
            </td>
            <td align="center" width="96">
                <img src="https://upload.wikimedia.org/wikipedia/commons/b/b2/SCIPY_2.svg" width="48" height="48" alt="SciPy" />
                <br>SciPy
            </td>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/kubernetes-icon.svg" width="48" height="48" alt="Kubernetes" />
                <br>Kubernetes
            </td>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/gnu_bash-icon.svg" width="48" height="48" alt="Bash" />
                <br>Bash
            </td>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/raspberrypi.png" width="48" height="48" alt="Raspberry Pi" />
                <br>Raspberry Pi
            </td>
            <td align="center" width="96">
                <img src="https://upload.wikimedia.org/wikipedia/commons/6/69/XGBoost_logo.png" width="48" height="48" alt="XGBoost" />
                <br>XGBoost
            </td>
            <td align="center" width="96">
                <img src="https://raw.githubusercontent.com/microsoft/LightGBM/master/docs/logo/LightGBM_logo_black_text.svg" width="48" height="48" alt="LightGBM" />
                <br>LightGBM
            </td>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/linux-original.svg" width="48" height="48" alt="Linux" />
                <br>Linux
            </td>
            <td align="center" width="96">
                <img src="https://catboost.ai/favicon.svg" width="48" height="48" alt="CatBoost" />
                <br>CatBoost
            </td>
        </tr>
        <tr>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/jenkins-icon.svg" width="48" height="48" alt="Jenkins" />
                <br>Jenkins
            </td>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/firebase.png" width="48" height="48" alt="Firebase" />
                <br>Firebase
            </td>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/arduino.png" width="48" height="48" alt="Arduino" />
                <br>Arduino
            </td>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/google_cloud-icon.svg" width="48" height="48" alt="GCP" />
                <br>GCP
            </td>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/dot-net-original-wordmark.svg" width="48" height="48" alt=".NET" />
                <br>.NET
            </td>
            <td align="center" width="96">
                <img src="https://chainer.org/images/logo.png" width="48" height="48" alt="Chainer" />
                <br>Chainer
            </td>
            <td align="center" width="96">
                <img src="https://upload.wikimedia.org/wikipedia/en/b/b9/Nvidia_CUDA_Logo.jpg" width="48" height="48" alt="TensorRT" />
                <br>TensorRT
            </td>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/java-original-wordmark.svg" width="48" height="48" alt="Java" />
                <br>Java
            </td>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/android-original-wordmark.svg" width="48" height="48" alt="Android" />
                <br>Android
            </td>
        </tr>
        <tr>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/powershell.png" width="48" height="48" alt="PowerShell" />
                <br>PowerShell
            </td>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/microsoft_azure-icon.svg" width="48" height="48" alt="Azure" />
                <br>Azure
            </td>
            <td align="center" width="96">
                <img src="https://upload.wikimedia.org/wikipedia/commons/f/f3/Apache_Spark_logo.svg" width="48" height="48" alt="Apache Spark" />
                <br>Apache Spark
            </td>
            <td align="center" width="96">
                <img src="https://profilinator.rishav.dev/skills-assets/gitlab.svg" width="48" height="48" alt="GitLab" />
                <br>GitLab
            </td>
            <td align="center" width="96">
                <img src="https://upload.wikimedia.org/wikipedia/commons/0/0e/Hadoop_logo.svg" width="48" height="48" alt="Hadoop" />
                <br>Hadoop
            </td>
        </tr>
    </table>
    <br>
    <br>
</div>
'@

$pattern1 = '(?s)<div style="display: flex; align-items: flex-start; align: center">.*?</div>'
$content = $content -replace $pattern1, $newTable

$pattern2 = '(?s)## Languages and Tools\s*<div align="center">.*?</div>\s*<br/>\s*'
$content = $content -replace $pattern2, ''

Set-Content -Path README.md -Value $content
