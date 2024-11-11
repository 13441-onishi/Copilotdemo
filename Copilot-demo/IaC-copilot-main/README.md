# IaC-copilot

このリポジトリは、Copilotを使ってTerraformやBicepのコードを生成するためのサンプルです。

## Terraform

### 事前準備

 - Terraformをインストール
 - Azure CLIをインストール

### デモシナリオ

1. `cd terraform`
2. `terraform init` を実行して、Terraformのプラグインをインストール
3. `variables.tf` をVSCodeで開く（Copilotはエディタ上で開いているファイルをコンテキストとして使うため）
4. `main.tf` をVSCodeで開く
5. ファイルの末尾にて `// Windows VM` というコメントを入力
6. Copilotによって、Terraformのコードが生成されることを確認。ここでのポイントは、var.admin_passwordなどの定義済み変数や、定義済みのリソースを参照するコードが生成されていること。これによって、Copilotが文脈を元にコードを生成していることを示す。また、ここでVSCodeのコマンドパレットで "Open GitHub Copilot" を実行することで、他の選択肢を確認することもできる。
7. `terraform validate` を実行して、生成されたコードが正しく動作することを確認（提案されたコードによっては、未定義のリソースを参照するケースもある）。
8. `az login` を実行して、Azure CLIをログイン
9. `terraform plan` を実行して、プランを確認
