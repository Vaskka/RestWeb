# API文档

## 获取首页广告推送

### url

/get/main/advertisement

### method

GET

### 传入参数

None

### 返回参数

```json
{
    "code": 0,
    "data": [
        "https://vaskka.com/static/other/1.jpg",
        "https://vaskka.com/static/other/2.jpg",
        "https://vaskka.com/static/other/3.jpg"
    ]

}
```

## 获取首页商家信息

### url

/get/main/business

### method

GET

### 传入参数

None

### 返回参数

```json
{
    "code": 0,
    "data": [
        {
            "id": "hxc61",
            "name": "九鼎冒菜",
            "headImg": "https://vaskka.com/static/jd.jpg"
        },
        {
            "id": "sayc2csd",
            "name": "xx米线",
            "headImg": "https://vaskka.com/static/mx.jpg"
        }
    ]

}
```

## 登陆

### url

/access/login

### method

POST

### 传入参数

```json
{
    "phone": "15145051056",
    "password": "123456"
}
```

### 返回参数

```json
{
    "code": 0, // 0-success 1-用户名或密码错误
    "userId": "sac613efs" // 用户id
}
```

## 注册

### url

/access/register

### method

POST

### 传入参数

```json
{
    "phone": "15145051056",
    "name": "hahahaha",
    "password": "123456"
}
```

### 返回参数

```json
{
    "code": 0, // 0-success 1-用户名或密码错误
    "userId": "sac613efs" // 用户id
}
```

## 获取商家全部商品

### url

/item/all/{bussinessId}

### method

GET

### 传入参数

None

### 返回参数

```json
{
    "code": 0, // 0-success 1-用户名或密码错误
    "cartId": "x7dsfh23",
    "data": [
        {
            "id": "c34rs/gb",
            "name": "苹果",
            "businessId": "c3asdf",
            "price": 12.5
        },
        {
            "id": "c34f55b",
            "name": "香蕉",
            "businessId": "c3asdf",
            "price": 20.2
        }
    ]
}
```

## 获取购物车内全部商品信息

### url

/cart/get/{businessId}/{userId}

### method

GET

### 传入参数

None

### 返回参数

```json
{
    "code": 0,
    "cartId": "cy3hf",
    "data": [
        {
            "id": "c34rs/gb",
            "name": "苹果",
            "businessId": "c3asdf",
            "price": 12.5
        },
        {
            "id": "c34f55b",
            "name": "香蕉",
            "businessId": "c3asdf",
            "price": 20.2
        }
    ]
}
```

## 进行结算

### url

/post/order

### method

POST

### 传入参数

{
    "cartId": "c83nfds"
}

### 返回参数

```json
{
    "code": 0,
    "orderId": "xcby321c",
    "data": {
        "price": 234.5,
        "items": [
            {
                "id": "c34rs/gb",
                "name": "苹果",
                "businessId": "c3asdf",
                "price": 12.5
            },
            {
                "id": "c34f55b",
                "name": "香蕉",
                "businessId": "c3asdf",
                "price": 20.2
            },
            ...
        ]
    }
}
```

## 获取保存的地址信息

### url

/info/address

### method

GET

### 传入参数

None

### 返回参数

```json
{
    "code": 0,
    "data": [
        "四川省成都市双流区川大路二段四川大学",
        "黑龙江省哈尔滨市松北区世纪花园"
    ]
}
```

## 获取有效代金券信息

### url

/info/coupon/{userId}/{businessId}

### method

GET

### 传入参数

+ userId: 用户id
+ businessId: 商家id

### 返回参数

```json
{
    "code": 0,
    "data": [
        {
            "id": "xb32f",
            "createTime": "2019-07-14 12:30:40",
            "price": 23.5,
            "validHours": 24,
            "businessId": "cu74bd",
            "userId": "c83cs"
        },
        {
            "id": "xb32cerf",
            "createTime": "2019-07-13 13:30:40",
            "price": 50,
            "validHours": 48,
            "businessId": "cu74bd",
            "userId": "c83cs"
        }
    ]
}
```

## 取消订单

> 取消订单

### url

/cancel/order

### method

POST

### 传入参数

```json
{
    "orderId": "xc1fdsad"
}
```

### 返回参数

```json
{
    "code": 0
}
```

## 进行支付

> 调用后必定返回一个二维码，前端用setTimeout模拟支付，之后跳转订单详情

### url

/trans

### method

POST

### 传入参数

```json
{
    "orderId": "xc1fdsad"
}
```

### 返回参数

```json
{
    "code": 0,
    "qrcodeBase64": "xcih23ubcsvoisdiov=="
}
```

## 为某个订单写评论

### url

/order/comment/create/{orderId}

### method

POST

### 传入参数

```json
{
    "content": "This is a content"
}
```

### 返回参数

```json
{
    "code": 0
}
```

## 获取某个指定订单

### url

/order/detail

### method

GET

### 传入参数

```json
{
    "orderId": "xc1fdsad"
}
```

### 返回参数

```json
{
    "code": 0,
    "data": {
        "id": "c813nxc",
        "creator": {
            "id": "c213fds",
            "name": "Vaskka"
        },
        "item": [
            {
                "id": "c34rs/gb",
                "name": "苹果",
                "price": 12.5
            },
            {
                "id": "c34f55b",
                "name": "香蕉",
                "price": 20.2
            }
        ],
        "sumPrice": "124",
        "business": {
            "id": "skfid91",
            "name": "xx水果店",
            "headImg": "https://vaskka.com/static/xxx.jpg"
        },
        "createTime": "2019-07-15 12:40:40",
        "status": "COMPLETE" // COMPLETE 已完成 CANCELED 已取消

    }
}
```

## 获取某个订单的全部评论

### url

/order/comment/get/{orderId}

### 传入参数

orderId: 订单id

### 返回参数

```json
{
    "code": 0,
    "data": [
        {
            "id": "sfg43",
            "user": "Vaskka",
            "createTime": "2019-07-14 12:30:40",
            "content": "This is a Content"
        },
        {
            "id": "ehehsfg43",
            "user": "VaskkaAmber",
            "createTime": "2019-07-15 12:30:40",
            "content": "This is a Content lalal"
        }
    ]
}
```

## 分页获取订单流水

### url

/admin/order/all/{number_every_page}/{page_offset}

### method

GET

### 传入参数

None

### 返回参数

```json
{
    "code": 0,
    "data": [
        {
            "id": "c813nxc",
            "creator": {
                "id": "c213fds",
                "name": "Vaskka"
            },
            "item": [
                {
                    "id": "c34rs/gb",
                    "name": "苹果",
                    "price": 12.5
                },
                {
                    "id": "c34f55b",
                    "name": "香蕉",
                    "price": 20.2
                }
            ],
            "sumPrice": "124",
            "business": {
                "id": "skfid91",
                "name": "xx水果店",
                "headImg": "https://vaskka.com/static/xxx.jpg"
            },
            "createTime": "2019-07-15 12:40:40",
            "coupon": [
                {
                    "id": "s1cefds",
                    "price": 12.5,
                    "createTime": "2019-07-03 12:30:30",
                    "validHours":  24
                },
                {
                    "id": "c4543",
                    "price": 30,
                    "createTime": "2019-07-12 12:35:44",
                    "validHours":  48
                }
            ],
            "comment": [
                {
                    "id": "sfg43",
                    "user": "Vaskka",
                    "createTime": "2019-07-14 12:30:40",
                    "content": "This is a Content"
                },
                {
                    "id": "ehehsfg43",
                    "user": "VaskkaAmber",
                    "createTime": "2019-07-15 12:30:40",
                    "content": "This is a Content lalal"
                }
        ],
            "status": "COMPLETE" // COMPLETE 已完成 CANCELED 已取消
        },
        ...
    ]
}
```


## 分页获取交易流水

### url

/admin/transition/all/{number_every_page}/{page_offset}

### method

GET

### 传入参数

None

### 返回参数

```json
{
    "code": 0,
    "data": [
        {
            "id": "c813nxc",
            "price": 30,
            "createTime": "2019-05-04 12:30:40"
        },
        {
            "id": "vy43bnws",
            "price": 40,
            "createTime": "2019-07-30 11:30:42"
        }
    ]
}
```


## 分页获取全部用户


### url

/admin/user/all/{number_every_page}/{page_offset}

### method

GET

### 传入参数

None

### 返回参数

```json
{
    "code": 0,
    "data": [
        {
            "id": "c813nxc",
            "name": "Vaskka",
            "type": 0,
            "phone": "15145051056"
        },
        {
            "id": "dvg3g",
            "name": "Tom",
            "type": 1,
            "phone": "13000000000"
        },
        {
            "id": "7567yh",
            "name": "Cede",
            "type": 2,
            "phone": "12000000000"
        }
    ]
}
```

