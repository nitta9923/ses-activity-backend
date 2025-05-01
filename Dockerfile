FROM openjdk:17-alpine

WORKDIR /app

# Gradle Wrapperと設定ファイルだけ先にコピー
COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .

# 依存ダウンロード
RUN ./gradlew dependencies

# ソース全コピー（あとでvolumeで上書き）
COPY . .

# 起動コマンドはbootRun＋--continuous（変更監視モード）
CMD ["./gradlew", "bootRun", "--continuous"]
