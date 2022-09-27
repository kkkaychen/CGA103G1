# 負責項目：票券商城 / 購物車 / 優惠券

## 前台
- 票券商城瀏覽 (`java/com/tkt`,  `java/com/tkt_img2`,  `webapp/frontend/tkt`)
- 票券詳情瀏覽(`java/com/tkt`, `java/com/tkt_img2`,  `webapp/frontend/tkt`)
- 購物車功能(`java/com/cart`, `webapp/frontend/cart`)
- 票券訂單 / 明細查看(`java/com/tkt_order2`, `java/com/tkt_item2`,`webapp/frontend/tkt_order`)
- 會員優惠券查看(`java/com/mem_coup`, `webapp/frontend/mem/memCoup.jsp`)

## 後台
- 票券商城管理(`java/com/tkt`, `java/com/tkt_img2`, `webapp/backend/tkt`)
- 優惠券管理(`java/com/coup`,  `webapp/backend/coup`)
- 會員優惠券發放(`java/com/mem_coup`,  `webapp/backend/mem_coup`)
- 票券訂單管理(`java/com/tkt_order2`, `java/com/tkt_item2`, `webapp/backend/tkt_order`)

## 使用技術
- HTML / CSS
- JavaScript
- jQuery
- Servlet / Jsp
- MySQL
- Redis
- Axios

---

👉 [專題負責項目 PDF 介紹](https://drive.google.com/file/d/1EbpLdg3gATd8yoa5kTOA2BscRhyE-rRb/view?usp=sharing)

👉 [專題負責項目影片介紹](https://drive.google.com/file/d/1w5j-y5IRRHUsMDHm5Ofhq9QzXOvQ84RV/view?usp=sharing)


![](https://i.imgur.com/eryyz6l.jpg)




### 票券商城
![](https://i.imgur.com/jf4FTmB.png)

- 前台使用複合查詢，以便使用者搜尋到更符合需求的票券商品。
- 當票券訂單成立後，同步更新票券售出量以及庫存量。


### 購物車
![](https://i.imgur.com/y5DbDO5.png)

- 使用 Cookie 存放 `SessionId`，讓使用者在登入前就能夠將商品加入購物車，登入後依然保留購物車中的商品清單。
- 使用 Redis 存放購物車清單項目，Key 存放 `SessionId` (Cookie 的 Value)，Value 存放購物車清單項目。
- 點擊加入購物車，同步更新購物車 icon 數量，使用 Ajax 技術，避免畫面重新渲染。
- 購物車清單頁面中的 +/-、刪除也是使用 Ajax 技術，避免畫面重新渲染。
- 若使用者尚未登入點選前往結帳，則會跳出登入頁面，登入成功後，依然保留登入前的購物車清單。
- 抵達結帳頁面，訂購者資料會自動抓取會員資料。
- 按下結帳，成立一筆訂單，這邊有做 Transaction，只要有一個步驟失敗，訂單就不會成立。

### 優惠券
- 優惠券以排程器自動下架已過期的優惠券。
- 購物車的使用優惠券區域，只會列出該會員擁有的優惠券，並且在用過優惠券後，狀態會改成已使用。




