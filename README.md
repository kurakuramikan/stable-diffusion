# 🚀 Stable Diffusion WebUI (Docker 版)

Stable Diffusion は **テキストから画像を生成** する AI モデルです。本リポジトリでは、Stable Diffusion WebUI (AUTOMATIC1111 版) を **Docker 環境** で簡単に動作させるためのセットアップ方法を提供します。

---

## **🌟 Stable Diffusion とは？**

Stable Diffusion は、オープンソースの **画像生成 AI** で、以下のような特徴があります。

- **テキスト（プロンプト）を入力するだけで画像を自動生成**
- **ローカル環境で実行可能（クラウドに依存しない）**
- **LoRA・ControlNet などの拡張機能でカスタマイズ自由**
- **無料で利用可能（モデルデータも自由に追加 OK）**

---

## **📌 このプロジェクトの特徴**

✅ **Docker で環境を汚さずに実行可能**
✅ **Apple Silicon (M1/M2/M3) に対応**
✅ **ローカルのモデルフォルダを使うので、モデルの追加が簡単**
✅ **一度セットアップすれば `docker-compose up -d` で即起動**

---

## **📦 必要な環境**

- **Mac (Apple Silicon / Intel) または Linux**
- **Docker Desktop (インストール方法: https://www.docker.com/products/docker-desktop/)**

---

## **🚀 セットアップ方法**

### **1️⃣ Docker イメージをビルド＆起動**

```bash
docker-compose up --build -d
```

### **2️⃣ ブラウザで WebUI にアクセス**

http://localhost:7860 を開くと、Stable Diffusion の WebUI が表示されます。

---

## **🎨 モデルのおすすめ**

Stable Diffusion は **モデルを変更することで、生成される画像のスタイルを変えることが可能** です。\
以下のおすすめモデルを用途別に紹介します。

| **用途**                   | **おすすめモデル**                | **特徴・ポイント**               |
| -------------------------- | --------------------------------- | -------------------------------- |
| **リアルな人物**           | **DreamShaper v7/v8**             | 現実的な人物を描くのに優秀       |
| **アニメ・イラスト**       | **Anything v5, Counterfeit v3.0** | きれいなアニメ風の画像が作れる   |
| **高精細なリアル系**       | **Realistic Vision v5.1**         | 肌や髪の質感がリアル             |
| **背景・風景（建築）**     | **Deliberate v3**                 | 風景や建築の構造が美しい         |
| **ファンタジー・ゲーム系** | **Juggernaut XL, RPG v4**         | ファンタジー系のアート向き       |
| **SDXL（高解像度）**       | **SDXL Turbo, SDXL 1.0**          | 高解像度でより詳細な画像が作れる |

### **🛠️ どこでダウンロードできる？**

📌 **モデルのダウンロードサイト**

- **[CivitAI](https://civitai.com/)** → 一番おすすめ！最新のカスタムモデルが豊富
- **[Hugging Face](https://huggingface.co/CompVis/stable-diffusion-v-1-4-original)** → 公式の SD モデルがある

### **📂 モデルの追加方法**

1. **モデルをダウンロード**
2. `models/Stable-diffusion/` フォルダに `.ckpt` または `.safetensors` を配置
3. **コンテナを再起動**
   ```bash
   docker-compose down && docker-compose up -d
   ```
