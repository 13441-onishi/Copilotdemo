# ChangeLog
## v0.4
- Copilot関連の設定。
- 不要なファイルの削除。

## v0.3
- Codespaces用設定（`.devcontainer`）の修正。
  - `docker-in-docker` featureの追加。

## v0.2
- `.eslintrc.js`の修正(`mocha`, `request`の追加)

## v0.1 (2022/12/20)
### Repository Contents
- Codespaces用設定（`.devcontainer`）の追加。
  - Runtime - `node.js v18`
  - Plugins - `GitHub.copilot`, `GitHub.copilot-labs`, `MS-vsliveshare.vsliveshare-pack`
  - Initialization - `npm install` as postCreateCommand
- `.gitignore`ファイルの修正（不要なファイルの削除）。
- `package.json`の修正。
  - `nodemon`の追加（`.js`ファイル修正時のアプリケーション自動再起動のため）。
  - `tslint`, `.eslintrc.js`の追加（必要に応じた`GHAS`連携のため）。
- 不要な（混乱を招きそうな）Actions Workflowを削除）。
  - `.github/workflows/azure.yml`
  - `.github/workflows/octodemo-javascript-workflow.yml`
- `MEMBERS.md`ファイルの追加。
- 動作未実装のボタン画像の追加（CSS / HTMLタグ)。
- タイトルを「仮(Under Development)」に変更。
- 画像(`invertocat.svg`)を登録。
- 実装に`TODO`マーカーを追加。
- CI用のActions Workflowバージョン更新（`node.js`, `actions`）。
- 単項演算子向けの(`unaryOperationPressed`)を追加(`operationPressed`は二項演算子向けのため）。
  - 合わせて、Operand2のValidationを無効化。

### Respoitory Settings

- Codespacesの有効化。
  - `All members`に追加。
  - `Codespaces Prebuild`の有効化。

- Branch Protection Rules
  - `main`ブランチに対するPull Requestの必須化。
