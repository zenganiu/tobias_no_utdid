## Tobias_no_utdid

支付宝SDK Flutter插件

> 注：此插件是[Tobias](https://github.com/OpenFlutter/tobias)兼容版，主要解决App已接入阿里百川等阿里系SDK，构建时可能发生utdid 库相关的冲突。

## 使用
##### 支付
```dart
import 'package:tobias/tobias.dart' ;

final result = await aliPay('xxx');

/// 支付结果result
{
  "result": partner="2088411752388544"&seller_id="etongka123@163.com"&out_trade_no="180926084213001"&subject="test pay"&total_fee="0.01"&notify_url="http://127.0.0.1/alipay001"&service="mobile.securitypay.pay"&payment_type="1"&_input_charset="utf-8"&it_b_pay="30m"&return_url="m.alipay.com"&success="true"&sign_type="RSA"&sign="nCZ8MDhsNvYNAbrLZJZ2VUy6vydgAp+JCq1aQo6ORDYtI9zwtnja3qNGQNiDJCuktoIj7fSTM487XhjPDqnOreZjIA1GJpxu9D1I3nMXIn1M7DfZ0noDwXcYZ438/jbYac7g8mhpwdKGweLCAni9mO3Y6q3iBFkox8i9PcsGxJY=",
  resultStatus: 9000,
  memo: "",
  platform:iOS
}
```

##### 授权

```dart
aliPayAuth("xxx");
```

##### 检查支付宝是否已安装

```dart
var result = await isAliPayInstalled();
``` 

## IOS端原生工程配置

##### 1.想要使用isAliPayInstalled检测支付宝是否已安装，需要在`info.plist`加入白名单 `alipays`
```xml
<key>LSApplicationQueriesSchemes</key>
<array>
	<string>alipays</string>
</array>
```

##### 2.支付回调需要 `info.plist`中添加URL scheme:
```xml
<array>
    <dict>
    <key>CFBundleTypeRole</key>
        <string>Editor</string>
    <key>CFBundleURLName</key>
        <string>alipay</string>
    <key>CFBundleURLSchemes</key>
        <array>
	    <string>tobiasexample</string> 
        </array>
    </dict>
</array>

```


