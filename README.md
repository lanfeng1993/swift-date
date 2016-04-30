# swift-date
A DateUtil in Swift

```Swift
let formatter = "yyyyMMdd"
var date1 = Date()
var date2 = Date(date: "20160426", formatter: formatter)
var date3 = Date(timeInterval: 1461600000.0)

var date4 = DateUtil.addDays(date2, amount: 2)
var date4Str = DateUtil.formatDate(date4, formatter: formatter)

date1.after(date3)

var date4Copy = DateUtil.fromString(date4Str, formatter: formatter)
if let date4Copy = date4Copy{
    date4.equal(date4Copy)
}
```
