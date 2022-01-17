# moview (モビュー)

## 開発環境

- Flutter v2.8.1
- VSCode（IDE）
- FVM（Flutterバージョン管理）
- VSCode拡張機能
  - Code Spell Checker（streetsidesoftware.code-spell-checker）

## セットアップ

```lib/utils/constant.dart```のapiTokenにTMDbのトークン(v4auth)を設定

## 画面

- HOME
  - 上段：カルセールで人気映画を表示
  - 中段：人気映画を表示
  - 下段：高評価映画を表示

- SEARCH
  - TextEditingControllerをリッスンして、1文字入力するたびに検索をかけている

- FAVORITE
  - お気に入り作品を表示

- DETAIL
  - 映画の詳細
  - お気に入り登録/解除
  - 関連映画を表示
