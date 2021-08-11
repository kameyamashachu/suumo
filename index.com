<!DOCTYPE html>
<!-- saved from url=(0041)https://hnakai0909.github.io/works/suumo/ -->
<html lang="ja"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  

  <title>あ！スーモ！</title>
  <style>
    body {
      background-color: #CE7;
    }

    i {
      text-indent: 1em;
      background-repeat: no-repeat;
      background-position: left center;
      background-size: contain;
      display: inline-block;
      width: 1em;
      height: 1.1em;
    }

    .e1 { background-image: url("./img/1.png"); }
    .e2 { background-image: url("./img/2.png"); }
    .e3 { background-image: url("./img/3.png"); }
    .e4 { background-image: url("./img/4.png"); }
    .e5 { background-image: url("./img/5.png"); }
    .e6 { background-image: url("./img/6.png"); }
    .e7 { background-image: url("./img/7.png"); }

  </style>

  <!-- Twitter Widgets -->
  <script id="twitter-wjs" src="./あ！スーモ！_files/widgets.js.ダウンロード"></script><script>window.twttr = (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0],
      t = window.twttr || {};
    if (d.getElementById(id)) return t;
    js = d.createElement(s);
    js.id = id;
    js.src = "https://platform.twitter.com/widgets.js";
    fjs.parentNode.insertBefore(js, fjs);
   
    t._e = [];
    t.ready = function(f) {
      t._e.push(f);
    };
   
    return t;
  }(document, "script", "twitter-wjs"));
  </script>

  <script src="./あ！スーモ！_files/main.js.ダウンロード" async=""></script>
<style type="text/css"></style><script charset="utf-8" src="./あ！スーモ！_files/button.5d16ecc02fbaf599a24dfb57ab239320.js.ダウンロード"></script></head>

<body>
  <div id="caution">ボタンを押すと音が出ます。音量にご注意ください。</div>
  <button type="button" id="normal" style="width:600px;height:80px;font-size:45px;">あ！スーモ！(ふつう)</button>
  <button type="button" id="random" style="width:600px;height:80px;font-size:45px;">あ！スーモ！(ランダム)</button>
  <button type="button" id="infinity-normal" style="width:600px;height:80px;font-size:45px;">あ！スーモ！(ふつう無限)</button>
  <button type="button" id="infinity" style="width:600px;height:80px;font-size:45px;">あ！スーモ！(ランダム無限)</button>
  <button type="button" id="stop" style="width:60px;height:60px;font-size:30px;text-align:center;">止</button>
  <table><tbody>
    <tr id="volume_box">
      <td>音量(開始時のみ反映)</td>
      <td>
        <input type="range" id="volume_slider" min="0" max="1" step="0.01" value="0.7" style="width:200px;height:20px;">
        <span id="volume_slider_value">70%</span>
      </td>
    </tr>
    <tr id="rate_box">
      <td>再生速度(開始時のみ反映)</td>
      <td>
        <input type="range" id="rate_slider" min="-2" max="2" step="0.01" value="0" style="width:200px;height:20px;">
        <span id="rate_slider_value">x1.00</span>
        <button type="button" id="rate_reset" style="width:60px;height:40px;font-size:16px;">x1.00</button>
      </td>
      <td>再生速度ランダム(スライドバー無視)</td>
      <td>
        <input type="checkbox" id="rate_random_checkbox" value="rate">
      </td>
    </tr>
  </tbody></table>
  <div id="box" style="font-size:2em;background:rgba(255,255,255,0.4);margin:16px;padding:16px;border-radius:8px;"></div>
  <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen="true" class="twitter-share-button twitter-share-button-rendered twitter-tweet-button" style="position: static; visibility: visible; width: 94px; height: 29px;" title="Twitter Tweet Button" src="./あ！スーモ！_files/tweet_button.f88235f49a156f8b4cab34c7bc1a0acc.ja.html" data-url="http://hnakai0909.github.io/works/suumo/"></iframe>
  <button type="button" id="tweet2" style="width:250px;height:40px;">ツイート(スーモ文字列を含める)</button>
  <div id="information">
    <li>2021/04/11 18時 sevenc-nanashiさんによるリポジトリリンクの追加(<a href="https://github.com/hnakai0909/hnakai0909.github.io/pull/8">PR #8</a>)をマージしました．</li>
    <li>2021/04/03 22時 HagiAyatoさんによるふつう無限モードの追加(<a href="https://github.com/hnakai0909/hnakai0909.github.io/pull/7">PR #7</a>)をマージしました．</li>
    <li>2021/04/02 19時 HagiAyatoさんによる音量現在値表示の追加(<a href="https://github.com/hnakai0909/hnakai0909.github.io/pull/6">PR #6</a>)をマージしました．</li>
    <li>2021/04/01 14時 harukei-techさんによるリファクタリング(<a href="https://github.com/hnakai0909/hnakai0909.github.io/pull/5">PR #5</a>)をマージしました．</li>
    <li>2021/03/31 3時 noriokun4649さんによる再生速度ランダム機能の追加(<a href="https://github.com/hnakai0909/hnakai0909.github.io/pull/4">PR #4</a>)をマージしました．</li>
    <li>2021/03/31 2時 ver-1000000さんによる複数再生周りのバグ(止ボタンが全部に対して効かないなど)修正(<a href="https://github.com/hnakai0909/hnakai0909.github.io/pull/3">PR #3</a>)をマージしました．</li>
    <li>2021/03/31 1時 音量調整・再生速度調整機能を追加しました．</li>
    <li>2021/03/31 1時 tubone24さんによる無限再生時ツイート文字数が多すぎるとHTTP 413エラーが出てしまう不具合対策(<a href="https://github.com/hnakai0909/hnakai0909.github.io/pull/2">PR #2</a>)をマージしました．</li>
    <li>2021/03/30 2時 uhyoさんによる無限ボタンの追加(<a href="https://github.com/hnakai0909/hnakai0909.github.io/pull/1">PR #1</a>)をマージしました．</li>
    <li>2021/03/29 23時 「ツイート(スーモ文字列を含める)」の不具合を修正しました．背景をそれらしい色にしました．などなど</li>
  </div>
  <a href="https://github.com/hnakai0909/hnakai0909.github.io/tree/master/works/suumo">ソースコード（GitHub）</a>



<iframe scrolling="no" frameborder="0" allowtransparency="true" src="./あ！スーモ！_files/widget_iframe.f88235f49a156f8b4cab34c7bc1a0acc.html" title="Twitter settings iframe" style="display: none;"></iframe><div id="UMS_TOOLTIP" style="position: absolute; cursor: pointer; z-index: 2147483647; background: transparent; top: -100000px; left: -100000px;"></div><iframe id="rufous-sandbox" scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen="true" style="position: absolute; visibility: hidden; display: none; width: 0px; height: 0px; padding: 0px; border: none;" title="Twitter analytics iframe" src="./あ！スーモ！_files/saved_resource.html"></iframe></body><umsdataelement id="UMSSendDataEventElement"></umsdataelement><div id="TAG_ID4TOOLBAR_UMS_GUID" style="display: none;">88E799FA-9318-17AD-0C80-4C6569F00A22</div><div id="tmtoolbar_ums_injected" style="display: none;">init_ums</div></html>
