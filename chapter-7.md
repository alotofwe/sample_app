### 7.1.3 Debugger

Debugはアプリへの理解を助ける  
byebugのgemを使おう ('debugger'と打つ)

(binding.pryと何が違うんだろう)

### 7.1.4 A Gravatar image and a sidebar

globally recognized avatar (Gravatar)  
画像周りの機能がたくさんある (show, upload, strage, etc.)

Gavatarのurlは平文にmd5 hashをかけたものを使う

    Digest::MD5::hexdigest({{email}})

## 7.2 Singup form

    bundle exec rake db:migrate:reset

でDBの中身をクリアする

### 7.2.1 Using form_for

controllerでUser.newして，viewのform_forでそれを利用

### 7.2.2 Signup form HTML

form_forのfは，formの要素を適切に配置してくれる

配置された要素はそれぞれnameが指定されている  
nameはparamsからフォーム要素を初期化するための記述

ブラウザからは見えないが，form_forによってCSRF対策も追記される

## 7.3 Unsuccessful signups

### 7.3.1 A working form

paramsを見ると，確かにparams[:user]でフォームの内容が渡されている

### 7.3.2 String parameters

form (params[:user]) からはどのような入力も受け付け可能なので危険  

そのため，Rails 4.0以降からmass assignment対策でstrong parametersが追加された  
これで，許された要素のみが(create|update)される

### 7.3.3 Signup error messages

Obj.errors.full_messagesにエラー内容が入っている

Obj.errors.countにエラーが出た個数が入っている

Obj.errors.empty?もしくはObj.errors.any?でエラーがあるかを調べられる  

include ActionView::Helpers::TextHelperでpluralize(num, str)も使うことができる  
勝手に単数形・複数形を制御してくれる

### 7.3.4 A test for invalid submission

assert_no_defference String {} で，{}が実行された前と後でString実行時の値が変わるか変わらないかをチェックすることができる

## 7.4 Successful signups

### 7.4.1 The finished signup form

### 7.4.2 The flash

1回だけメッセージを表示し，リロードをすると表示されなくなる機能がflash

### 7.4.3 The first signup

7.4.2の動作確認

### 7.4.4 A test for valid submission

assert_defferenceは第2引数として差の数の指定ができる

## 7.5 Professional-grade deployment

