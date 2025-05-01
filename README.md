**必須設定**
 
バックエンドは、リモートデバッグモード（port 5005）で起動するため、以下の設定を .vscode/launch.json に追加する必要があります。

この設定がないと、VSCodeからの接続を待ち続けてバックエンドが起動完了しないため、必須の手順です。

 追加先：
 
プロジェクト直下の .vscode/launch.json
 {
  "version": "0.2.0",
  "configurations": [
    {
      "type": "java",
      "name": "Remote Debug (Docker)",
      "request": "attach",
      "hostName": "localhost",
      "port": 5005
    }
  ]
}

※5005 ポートがDockerコンテナで公開されていることを確認してください
