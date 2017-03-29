# Electronic-invitations

### 电子请柬H5

`swiper` ：适配移动端浏览器

`TweenMax` ：动画引擎

`html5loadeer`： 资源预加载

`php` ：嘉宾留言来访信息处理

`mysql` ：数据存储

(不考虑横屏)屏幕适配核心代码：
```javascript
    //ip6  375-603
    var sceneWidth = $(window).width();
    var sceneHeight = $(window).height();
    var ratio = sceneWidth/sceneHeight;

    if(ratio > (375/603)){
        sceneWidth = sceneHeight * (375/603);
    }else {
        sceneHeight = sceneWidth * (603/375 );
    }

    $("body").css({width : sceneWidth, height : sceneHeight});
```