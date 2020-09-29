document.addEventListener("DOMContentLoaded",()=>{
  // 1　クリックイベント発火


  // 2　Ajaxでコントローラーに値を送る

    //2-1 formDataでのデータ取得
    //2-2 XMLHttpRequestのプロパティ設定(open,send,responsType,onload)
    //2-3 CSRF対策 https://qiita.com/naberina/items/d3b14521e78e0daccdcd

  // 3　Ajax成功後のview変更

    //3-1 カート追加ボタンの文字列変更
    //3-2 カート追加ボタンのstyle変更

  // 4  loading実装
})



document.addEventListener("DOMContentLoaded",()=>{
  const cartBtn=document.getElementById('cart-btn')
  const item_id=Number(cartBtn.getAttribute("data-item-id"))
  const loader=document.getElementById('overlay')

    cartBtn.addEventListener('click',()=>{
      const fd = new FormData();
      fd.append('item_id',item_id);
      fd.append('quantity', 4);
     
      loader.classList.add('fadein-bg')
      const XHR =new XMLHttpRequest();
        const token = document.getElementsByName('csrf-token')[0].content;
        console.log(token)
        
       
  
        XHR.open("POST", `/carts/add_item`, true);
        XHR.setRequestHeader('X-CSRF-Token', token);   //koko!!!  application.contorollerで許可するとsessionだめ

        XHR.responseType = "json";
        XHR.send(fd);
        XHR.onload = () => {
        console.log(XHR.status)
          if(XHR.status == 200){
            setTimeout(function(){
              loader.classList.remove('fadein-bg')
              cartBtn.textContent='カートに入っています'
              cartBtn.removeAttribute('id')
              cartBtn.setAttribute("style", "background:#c8c8c8;; opacity: .6;");
            },1000)
          }else{
            alert('失敗')
          }
        }
    })
})

