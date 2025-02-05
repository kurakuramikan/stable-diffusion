# ベースイメージ (Python 3.10 + 必要なライブラリ)
FROM python:3.10

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    git \
    wget \
    && rm -rf /var/lib/apt/lists/*

# WebUI のディレクトリを作成
WORKDIR /stable-diffusion-webui

# Stable Diffusion WebUI のリポジトリをクローン
RUN git clone --depth=1 https://github.com/AUTOMATIC1111/stable-diffusion-webui.git .

# Python の依存関係をインストール
RUN pip install --no-cache-dir -r requirements.txt

# モデル用ディレクトリを作成
RUN mkdir -p /stable-diffusion-webui/models/Stable-diffusion

# WebUI を起動するエントリーポイント
CMD ["python", "launch.py", "--listen", "--port=7860"]
