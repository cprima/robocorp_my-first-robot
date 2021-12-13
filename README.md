# Robocorp level II certification course

This repo contains code to achieve the Robocorp level II certification as per [https://robocorp.com/docs/courses/build-a-robot](https://robocorp.com/docs/courses/build-a-robot).

## Run

This repo contains code implementing a local, _committed_ vault file to demonstrate consumption of secrets. This shall never be done in a real automation! To point rcc to the neccesary environmant file use `rcc run -e devdata/env.json`. In a Bash shell I tend to alias with to e.g. `alias r="rcc run -e devdata/env.json"`.

## Learning materials

I found these resources helpful:

- [Robot Framework cheat sheet and quick reference](https://robocorp.com/docs/languages-and-frameworks/robot-framework/cheat-sheet)
- [Use a vault for secrets](https://robocorp.com/docs/development-guide/variables-and-secrets/vault)
- [RPA certification level I: Beginner's course solution](https://robocorp.com/docs/courses/beginners-course/logging-out-and-closing-the-browser)

## Sample terminal output

### Ubuntu 20.04

```bash
tutor@T530-U204-2020:~/Code/github.com/cprima/robocorp_my-first-robot$ rcc run -e devdata/env.json
"/home/tutor/Code/github.com/cprima/robocorp_my-first-robot/robot.yaml" as robot.yaml is:
tasks:
  Run all tasks:
    shell: python -m robot --report NONE --outputdir output --logtitle "Task log" tasks.robot

condaConfigFile: conda.yaml
artifactsDir: output
PATH:
  - .
PYTHONPATH:
  - .
ignoreFiles:
  - .gitignore

####  Progress: 01/13  v11.4.3     0.013s  Fresh holotree environment 16c3af47-92f6-624f-034e-dc58b8084cf5.
####  Progress: 02/13  v11.4.3     0.002s  Holotree blueprint is "1ce7b4a3d1c99382".
####  Progress: 12/13  v11.4.3    44.343s  Restore space from library [with 3 workers].
Installation plan is: /home/tutor/.robocorp/holotree/5a1fac3c5_9fcd2534/rcc_plan.log
Environment configuration descriptor is: /home/tutor/.robocorp/holotree/5a1fac3c5_9fcd2534/identity.yaml
####  Progress: 13/13  v11.4.3     1.678s  Fresh holotree done [with 3 workers].
Wanted  Version  Origin  |  No.  |  Available                           Version    Origin                |  Status
------  -------  ------  +  ---  +  ---------                           -------    ------                +  ------
-       -        -       |    1  |  Authlib                             0.15.5     pypi                  |  N/A
-       -        -       |    2  |  Pillow                              8.4.0      pypi                  |  N/A
-       -        -       |    3  |  PyPDF2                              1.26.0     pypi                  |  N/A
-       -        -       |    4  |  PyQt5                               5.15.6     pypi                  |  N/A
-       -        -       |    5  |  PyQt5-Qt5                           5.15.2     pypi                  |  N/A
-       -        -       |    6  |  PyQt5-sip                           12.9.0     pypi                  |  N/A
-       -        -       |    7  |  PyQtWebEngine                       5.15.5     pypi                  |  N/A
-       -        -       |    8  |  PyQtWebEngine-Qt5                   5.15.2     pypi                  |  N/A
-       -        -       |    9  |  PySocks                             1.7.1      pypi                  |  N/A
-       -        -       |   10  |  PyYAML                              5.4.1      pypi                  |  N/A
-       -        -       |   11  |  Pygments                            2.10.0     pypi                  |  N/A
-       -        -       |   12  |  _libgcc_mutex                       0.1        conda-forge/linux-64  |  N/A
-       -        -       |   13  |  _openmp_mutex                       4.5        conda-forge/linux-64  |  N/A
-       -        -       |   14  |  appdirs                             1.4.4      pypi                  |  N/A
-       -        -       |   15  |  attrs                               21.2.0     pypi                  |  N/A
-       -        -       |   16  |  backports.zoneinfo                  0.2.1      pypi                  |  N/A
-       -        -       |   17  |  beautifulsoup4                      4.10.0     pypi                  |  N/A
-       -        -       |   18  |  ca-certificates                     2021.10.8  conda-forge/linux-64  |  N/A
-       -        -       |   19  |  cached-property                     1.5.2      pypi                  |  N/A
-       -        -       |   20  |  certifi                             2021.10.8  pypi                  |  N/A
-       -        -       |   21  |  cffi                                1.15.0     pypi                  |  N/A
-       -        -       |   22  |  chardet                             3.0.4      pypi                  |  N/A
-       -        -       |   23  |  charset-normalizer                  2.0.9      pypi                  |  N/A
-       -        -       |   24  |  click                               7.1.2      pypi                  |  N/A
-       -        -       |   25  |  cryptography                        3.4.8      pypi                  |  N/A
-       -        -       |   26  |  decorator                           5.1.0      pypi                  |  N/A
-       -        -       |   27  |  defusedxml                          0.7.1      pypi                  |  N/A
-       -        -       |   28  |  dnspython                           2.1.0      pypi                  |  N/A
-       -        -       |   29  |  docutils                            0.18.1     pypi                  |  N/A
-       -        -       |   30  |  et-xmlfile                          1.1.0      pypi                  |  N/A
-       -        -       |   31  |  exchangelib                         4.6.2      pypi                  |  N/A
-       -        -       |   32  |  fpdf2                               2.4.6      pypi                  |  N/A
-       -        -       |   33  |  furl                                2.1.3      pypi                  |  N/A
-       -        -       |   34  |  graphviz                            0.13.2     pypi                  |  N/A
-       -        -       |   35  |  htmldocx                            0.0.6      pypi                  |  N/A
-       -        -       |   36  |  idna                                3.3        pypi                  |  N/A
-       -        -       |   37  |  importlib-metadata                  4.8.2      pypi                  |  N/A
-       -        -       |   38  |  importlib-resources                 5.4.0      pypi                  |  N/A
-       -        -       |   39  |  isodate                             0.6.0      pypi                  |  N/A
-       -        -       |   40  |  java-access-bridge-wrapper          0.7.5      pypi                  |  N/A
-       -        -       |   41  |  jsonpath-ng                         1.5.3      pypi                  |  N/A
-       -        -       |   42  |  jsonschema                          4.2.1      pypi                  |  N/A
-       -        -       |   43  |  ld_impl_linux-64                    2.36.1     conda-forge/linux-64  |  N/A
-       -        -       |   44  |  libffi                              3.3        conda-forge/linux-64  |  N/A
-       -        -       |   45  |  libgcc-ng                           11.2.0     conda-forge/linux-64  |  N/A
-       -        -       |   46  |  libgomp                             11.2.0     conda-forge/linux-64  |  N/A
-       -        -       |   47  |  libstdcxx-ng                        11.2.0     conda-forge/linux-64  |  N/A
-       -        -       |   48  |  libzlib                             1.2.11     conda-forge/linux-64  |  N/A
-       -        -       |   49  |  lxml                                4.6.4      pypi                  |  N/A
-       -        -       |   50  |  mss                                 6.1.0      pypi                  |  N/A
-       -        -       |   51  |  ncurses                             6.2        conda-forge/linux-64  |  N/A
-       -        -       |   52  |  netsuitesdk                         1.24.0     pypi                  |  N/A
-       -        -       |   53  |  notifiers                           1.2.1      pypi                  |  N/A
-       -        -       |   54  |  ntlm-auth                           1.5.0      pypi                  |  N/A
-       -        -       |   55  |  oauthlib                            3.1.1      pypi                  |  N/A
-       -        -       |   56  |  openpyxl                            3.0.9      pypi                  |  N/A
-       -        -       |   57  |  openssl                             1.1.1l     conda-forge/linux-64  |  N/A
-       -        -       |   58  |  orderedmultidict                    1.0.1      pypi                  |  N/A
-       -        -       |   59  |  pdfminer.six                        20201018   pypi                  |  N/A
-       -        -       |   60  |  pip                                 20.1.1     conda-forge/noarch    |  N/A
-       -        -       |   61  |  platformdirs                        2.4.0      pypi                  |  N/A
-       -        -       |   62  |  ply                                 3.11       pypi                  |  N/A
-       -        -       |   63  |  proxy-tools                         0.1.0      pypi                  |  N/A
-       -        -       |   64  |  pycparser                           2.21       pypi                  |  N/A
-       -        -       |   65  |  pynput-robocorp-fork                4.0.0      pypi                  |  N/A
-       -        -       |   66  |  pyperclip                           1.8.2      pypi                  |  N/A
-       -        -       |   67  |  pyrsistent                          0.18.0     pypi                  |  N/A
-       -        -       |   68  |  python                              3.7.5      conda-forge/linux-64  |  N/A
-       -        -       |   69  |  python-docx                         0.8.11     pypi                  |  N/A
-       -        -       |   70  |  python-xlib                         0.31       pypi                  |  N/A
-       -        -       |   71  |  python_abi                          3.7        conda-forge/linux-64  |  N/A
-       -        -       |   72  |  pytz                                2021.3     pypi                  |  N/A
-       -        -       |   73  |  pywebview                           3.5        pypi                  |  N/A
-       -        -       |   74  |  readline                            8.1        conda-forge/linux-64  |  N/A
-       -        -       |   75  |  requests                            2.26.0     pypi                  |  N/A
-       -        -       |   76  |  requests-file                       1.5.1      pypi                  |  N/A
-       -        -       |   77  |  requests-ntlm                       1.1.0      pypi                  |  N/A
-       -        -       |   78  |  requests-oauthlib                   1.3.0      pypi                  |  N/A
-       -        -       |   79  |  requests-toolbelt                   0.9.1      pypi                  |  N/A
-       -        -       |   80  |  rfc3987                             1.3.8      pypi                  |  N/A
-       -        -       |   81  |  robocorp-dialog                     0.4.1      pypi                  |  N/A
-       -        -       |   82  |  robotframework                      4.1.2      pypi                  |  N/A
-       -        -       |   83  |  robotframework-pythonlibcore        3.0.0      pypi                  |  N/A
-       -        -       |   84  |  robotframework-requests             0.9.2      pypi                  |  N/A
-       -        -       |   85  |  robotframework-seleniumlibrary      5.1.3      pypi                  |  N/A
-       -        -       |   86  |  robotframework-seleniumtestability  1.1.0      pypi                  |  N/A
-       -        -       |   87  |  rpaframework                        12.1.1     pypi                  |  N/A
-       -        -       |   88  |  rpaframework-core                   6.5.1      pypi                  |  N/A
-       -        -       |   89  |  rpaframework-dialogs                0.4.2      pypi                  |  N/A
-       -        -       |   90  |  rpaframework-pdf                    1.30.2     pypi                  |  N/A
-       -        -       |   91  |  selenium                            3.141.0    pypi                  |  N/A
-       -        -       |   92  |  setuptools                          59.4.0     conda-forge/linux-64  |  N/A
-       -        -       |   93  |  simple-salesforce                   1.11.4     pypi                  |  N/A
-       -        -       |   94  |  six                                 1.16.0     pypi                  |  N/A
-       -        -       |   95  |  sortedcontainers                    2.4.0      pypi                  |  N/A
-       -        -       |   96  |  soupsieve                           2.3.1      pypi                  |  N/A
-       -        -       |   97  |  sqlite                              3.37.0     conda-forge/linux-64  |  N/A
-       -        -       |   98  |  tenacity                            8.0.1      pypi                  |  N/A
-       -        -       |   99  |  tk                                  8.6.11     conda-forge/linux-64  |  N/A
-       -        -       |  100  |  tqdm                                4.62.3     pypi                  |  N/A
-       -        -       |  101  |  tweepy                              3.10.0     pypi                  |  N/A
-       -        -       |  102  |  typing-extensions                   4.0.1      pypi                  |  N/A
-       -        -       |  103  |  tzdata                              2021.5     pypi                  |  N/A
-       -        -       |  104  |  tzlocal                             2.1        pypi                  |  N/A
-       -        -       |  105  |  urllib3                             1.26.7     pypi                  |  N/A
-       -        -       |  106  |  webdrivermanager                    0.10.0     pypi                  |  N/A
-       -        -       |  107  |  wheel                               0.37.0     conda-forge/noarch    |  N/A
-       -        -       |  108  |  wrapt                               1.13.3     pypi                  |  N/A
-       -        -       |  109  |  xlrd                                2.0.1      pypi                  |  N/A
-       -        -       |  110  |  xlutils                             2.0.0      pypi                  |  N/A
-       -        -       |  111  |  xlwt                                1.3.0      pypi                  |  N/A
-       -        -       |  112  |  xz                                  5.2.5      conda-forge/linux-64  |  N/A
-       -        -       |  113  |  zeep                                4.1.0      pypi                  |  N/A
-       -        -       |  114  |  zipp                                3.6.0      pypi                  |  N/A
-       -        -       |  115  |  zlib                                1.2.11     conda-forge/linux-64  |  N/A
------  -------  ------  +  ---  +  ---------                           -------    ------                +  ------
Wanted  Version  Origin  |  No.  |  Available                           Version    Origin                |  Status

--
==============================================================================
Tasks :: Orders robots from RobotSpareBin Industries Inc. Saves the order H...
==============================================================================
Order robots from RobotSpareBin Industries Inc                        /home/tutor/bin/google-chrome: line 2: chromium-browser: command not found
/home/tutor/bin/google-chrome: line 2: chromium-browser: command not found
/home/tutor/bin/google-chrome: line 2: chromium-browser: command not found
| PASS |
------------------------------------------------------------------------------
Tasks :: Orders robots from RobotSpareBin Industries Inc. Saves th... | PASS |
1 task, 1 passed, 0 failed
==============================================================================
Output:  /home/tutor/Code/github.com/cprior/robocorp_my-first-robot/output/output.xml
Log:     /home/tutor/Code/github.com/cprior/robocorp_my-first-robot/output/log.html
OK.
```