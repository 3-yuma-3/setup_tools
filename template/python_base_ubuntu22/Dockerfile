FROM ubuntu:22.04

# localeの選択が対話形式で出てしまうので先に tzdata を install
RUN apt-get update -y && \
  apt-get install -y tzdata wget
# pythonに必要なツール類
# https://www.python.jp/install/ubuntu/index.html#2p8qV7
RUN apt-get install -y build-essential libbz2-dev libdb-dev \
  libreadline-dev libffi-dev libgdbm-dev liblzma-dev \
  libncursesw5-dev libsqlite3-dev libssl-dev \
  zlib1g-dev uuid-dev tk-dev

#任意バージョンのpython install
RUN wget --no-check-certificate https://www.python.org/ftp/python/3.11.3/Python-3.11.3.tgz \
  && tar -xf Python-3.11.3.tgz \
  && cd Python-3.11.3 \
  && ./configure --enable-optimizations\
  && make \
  && make install

#サイズ削減のため不要なものは削除
RUN apt-get autoremove -y

#必要なpythonパッケージをpipでインストール
RUN pip3 install --upgrade pip && pip install --upgrade setuptools
# RUN pip3 install --no-cache-dir jupyterlab

#requirements.txtなら以下
#RUN pip3 install -r ./requirements.txt
