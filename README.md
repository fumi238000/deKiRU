# deKiRU
現役の住宅営業が、DYIに関する情報を発信するために作成したサービスです。
## URL
- https://dekiru-app-staging.herokuapp.com/

*現在Productionは依頼人が データを作成するために使用しているため、Staging環境のURLになります。(2022/6/16現在)

### 管理人としてログインする場合
- admin_user: admin@example.com
- password: password

### ユーザーとしてログインする場合
- ゲストログインボタンよりログイン


## 製作背景
### 「動画」+「説明」で情報を提供する仕組みを作る
- 前職で仕事をしていた方より、DYIに関する情報を動画付きで発信してみたい」というご相談を受けたのがきっかけです。
- 言葉や文字よりも動画を見る方が伝わりやすいため、動画をベースに情報を伝えることを目的としたアプリを作成しました。

## こだわった点
### 欲しい情報をすぐに表示できるように実装したこと
ヘッダーに検索フォームを実装し、どこのページからでも検索ができるようにしました。
また、キーワード検索により、キーワードを持つコンテンツのみを表示できるように実装しました。

### 管理者画面をオリジナルで作成したこと
利便性を考えて、実際に表示する画面でデータを新規作成・編集・削除することができるように実装し、依頼人にも高評価を頂きました。それに加えて、スピードを意識する場合は、`active_admin`を導入して開発する方が良いという経験を得ることができました。Gemの必要性を考える良いきっかけになりました。

### 期日までに完成するようにしたこと
現場を意識するために、「期日を切る」ことを意識して作成しました。deKiRUでは「1ヶ月」という期日を設け、その期日中に完成させることを目標に作成しました。

## 工夫した点
### 使用したことのない技術を導入したこと
今回の開発では、一度も使用したことがない「TailwindCSS」でフロントを実装しました。結果的にレスポンシブ対応に加え、アニメーションやグラデーションなどスムーズに実装でき、開発に良い結果が出ました。TailwindCSSの良さを実感したと同時に、使用したことがない技術で開発することで、新しい技術もスムーズに得ることが出来る経験を得ました。今後新しく開発する場合も全く使用したことがない技術を少しずつ取り入れて開発していきたいと思います。

### 早い段階でテストを実装して開発したこと
今回の開発では、出来るだけやり直しが発生しないように、テーブルを作成した後にモデルスペックを実装、一通りCRUD処理を実装した後にリクエストスペックを実装、というルールの元でテストを早い段階から実装ながら開発しました。結果、Githubにpushする際に必ずテストを走らせ、確認しながら開発を進めたことで、大きなやり直しが発生せずにスムーズかつ安心して開発することができました。

### 依頼人と打ち合わせを行いながら開発を進めたこと
依頼人とのズレを発生させないように、週に1〜2回、依頼人とzoomで打ち合わせする時間を設け、デザインや機能を確認しながら開発を進めました。打ち合わせ内容は、Googleのスプレッドシートで記録・デザインはFigmaでsp用とpc用の2種類を作成し共有を行うことで、依頼人とズレがない開発を意識して進めました。依頼された物を形にする経験をすることができたので、非常に良い経験になりました。


## 機能一覧
### コンテンツの追加・編集(管理者のみ)
- コンテンツの作成・編集・削除
- 作り方の作成・編集・削除
- 材料の作成・編集・削除
- コンテンツの公開・非公開を設定（enum）
- キーワードの追加
- カテゴリーの選択 

### 種類別コンテンツの閲覧(全てのユーザー)
- 人気情報（お気に入りの数が多い順番にコンテンツを表示）
- おすすめ情報（管理者がおすすめに設定したコンテンツを表示）
- 新着情報(作成された順番で表示)
- カテゴリー(カテゴリーを持つコンテンツを表示)
- キーワード（キーワードを持つコンテンツを表示）

#### コンテンツ詳細
- 動画の表示機能（youtube）
- お気に入りボタン(ajax)
- パンくずリスト機能

### コンテンツの検索(全てのユーザー)
- 条件検索：コンテンツに条件（タイトル+サブタイトル+キーワード）を持つコンテンツを表示
- キーワード検索：キーワードを持つコンテンツを表示
## レビュー機能
- レビューの作成(ログインユーザーのみ)
- レビューの削除（作成したログインユーザー・管理者のみ）
- 画像投稿機能（carrierwave/mini_magick）

## 質問機能
- 質問の作成(ログインユーザーのみ)
- 質問の削除（作成したログインユーザー・管理者のみ）
## 返信機能(管理者のみ)
- 返信の作成・編集・削除機能

### ユーザー機能
- ユーザー情報 登録・編集・削除
- ユーザ認証機能(Devise)
- マイページ お気に入り一覧
- ゲストユーザーログイン機能
- ユーザーの停止機能（enum）
- 画像投稿機能（carrierwave/mini_magick）

## 管理者機能
- 各種新規作成・編集・削除(一部active_admin)
- インポート/エクスポート機能(csv)
### UI
- ハンバーガーメニュー(css)
- ページネーション機能(kaminari)
- コンテンツズーム機能(transform/scale)
- トップへ戻るボタン(jQuery)
- アコーディオン(jQuery)
- 文字数カウンター(JavaScript)

### その他
- フォーマッターの導入（rubocop）
- 404ページの設定
- 管理者画面(active_admin)

## 環境・使用言語
- フロントエンド(HTML, CSS, Sass, TailwindCSS, JavaScript, jQuery)
- バックエンド(Ruby, Ruby on Rails)
- テスト(Rspec/factory_bot/Capybara)
- DB(MySQL)
- 開発環境(MacOS, VScode, Git, Github, zsh)
- インフラ(Heroku)


## 使い方
### 欲しいコンテンツを見つける
- 条件検索・キーワード検索・カテゴリー検索など様々な方法で情報を見つけることができます。

### お気に入りをして、保存しておきたい情報をストックする
- お気に入りをすることで、マイページより閲覧することができます。

### 質問をする
- ログインすることで、各コンテンツで管理者に質問をすることができます。

### レビューする
- ログインすることで、コンテンツに対してレビューをすることができます。


## 資料
### ER図
<img width="1113" alt="ER図" src="https://user-images.githubusercontent.com/64491435/122630921-515b2680-d102-11eb-826b-9ceeef729e63.png">

### テーブル設計
- [テーブル設計](https://docs.google.com/spreadsheets/d/12leHXCbUvZF1ZxuqPPIlxjBD2z0edQQAqtMsdmoLdSs/edit#gid=0)

### Figma
- サイズや幅のイメージを行った上で実装したので、比較的スムーズに実装できました。
- [figma　デザインカンプ](https://www.figma.com/file/OxNEM304xYCKvQ0QisUk4u/deKiRU?node-id=0%3A1)


## 追加予定の機能
- SendGridを使用したメール送信機能
- S3を使用した画像アップロード機能
- ~管理者画面をactive_adminを使用しない（現状一部使用）~
- ~フィーチャースペックの修正~
- トップページのイメージ写真を実装（依頼人待ち）
- アイコン写真を実装（依頼人待ち）
- コンテンツの追加（依頼人待ち）

## 今後の予定
- 現在依頼人が本番環境にてコンテンツを制作中です。コンテンツが一定数完成後、運用方法を決定する予定です。
