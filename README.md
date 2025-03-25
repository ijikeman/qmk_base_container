# qmk\_base\_container (Updated Version)

## Overview

The original `qmk_base_container` Docker image is outdated and no longer maintained. To ensure compatibility with modern environments and dependencies, we have rebuilt the container with updated libraries and dependencies.

## Key Updates

- Updated base image to a more recent version.
- Included the latest dependencies required for QMK development.

## Repository

You can find the updated Docker image and source code in this repository.

## Usage

To use the new Docker image, pull it from the registry and run:

```sh
# Pull the latest version on Github Container Registry
docker pull ghcr.io/ijikeman/qmk_base_container:latest

# Pull the latest version on Docker Hub Container Registry
docker pull ijikeman/qmk_base_container:latest

# Run the container
docker run --rm -it <new-image-repository>:latest /bin/bash
```

## Contribution

Contributions and feedback are welcome! Please open an issue or submit a pull request if you encounter any problems or have suggestions for improvements.

## License

This project follows the same licensing as the original `qmk_base_container` project.

## Contact

For any questions, feel free to open an issue or reach out to the maintainers.

---

# qmk\_base\_container（更新版）

## 概要

元の `qmk_base_container` Docker イメージは古く、メンテナンスされていません。最新の環境と依存関係との互換性を確保するため、新しくコンテナを再構築しました。

## 主な更新内容

- ベースイメージを最新のものに更新
- QMK 開発に必要な最新の依存関係を追加

## リポジトリ

更新された Docker イメージとソースコードは、このリポジトリにあります。

## 使い方

新しい Docker イメージをレジストリから取得し、実行するには以下のコマンドを使用してください。

```sh
# 最新バージョンを取得 on Github Container Registry
docker pull ghcr.io/ijikeman/qmk_base_container:latest

# 最新バージョンを取得 on Docker Hub Container Registry
docker pull ijikeman/qmk_base_container:latest

# コンテナを実行
docker run --rm -it <new-image-repository>:latest /bin/bash
```

## コントリビューション

バグ報告や改善提案は歓迎します！問題が発生した場合や提案がある場合は、Issue を作成するかプルリクエストを送信してください。

## ライセンス

本プロジェクトは、元の `qmk_base_container` プロジェクトと同じライセンスに従います。

## 問い合わせ

質問がある場合は、Issue を作成するか、メンテナーにお問い合わせください。
