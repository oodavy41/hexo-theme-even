{% if page.comments and not is_home() %}
  <div class="comments" id="comments">
    {% if theme.disqus_shortname %}
      <div id="disqus_thread">
        <noscript>
          Please enable JavaScript to view the
          <a href="//disqus.com/?ref_noscript">comments powered by Disqus.</a>
        </noscript>
      </div>
    {% elif theme.livere_datauid %}
      <div id="lv-container" data-id="city" data-uid="{{ theme.livere_datauid }}">
        <noscript>为正常使用来必力评论功能请激活JavaScript</noscript>
      </div>  
    {% elif theme.valine %}
      <script src="//cdn1.lncld.net/static/js/3.0.4/av-min.js"></script>
      <script src='//unpkg.com/valine/dist/Valine.min.js'></script>
      <style type="text/css">
        .v *{
          color: #a6ed8e;
        }
        .v .vwrap {
          border: 0px;
        }
        .v .vwrap .vheader .vinput {
          border-bottom: 1px dashed #a6ed8e;
        }
        .v .vwrap .vheader .vinput:focus{
          border-bottom: 1px dashed #1b3c59;
        }
        .v .veditor {
          min-height: 3.5rem;
        }
        .v .vbtn:active, .v .vbtn:hover {
          color: #a6ed8e;
          border-color: #a6ed8e;
          background-color: #1b3c59;
        }
        .v .vlist .vcard .vimg{
          border: 1px dashed #a6ed8e;
        }
        .v .vlist .vcard .vhead .vnick{
          color: #a6ed8e;
        }
        .v .vlist .vcard .vhead .vsys{
          background-color:rgba(0,0,0,0);
        }
        .v .vlist .vcard .vh{
          border-bottom: 1px dashed #456173;
        }
        .v .vlist .vcard .vh .vmeta .vat{
          color: #f3f3f1;
        }
      </style>
      <div id="vcomments"></div>
      <script>
        new Valine({
            el: '#vcomments',
            appId: '{{theme.valine.app_id}}',
            appKey: '{{theme.valine.app_key}}',
            notify:true, 
            verify:false, 
            avatar:'retro', 
            placeholder: ' (*・ω・)⊃━  怪雨奇迹、☆'
        })
      </script>
    {% elif theme.isso %}
      <script data-isso="//{{theme.isso.address}}/"
        data-isso-css="true"
        data-isso-lang="zh"
        data-isso-reply-to-self="true"
        data-isso-require-author="false"
        data-isso-require-email="false"
        data-isso-max-comments-top="10"
        data-isso-max-comments-nested="5"
        data-isso-reveal-on-click="5"
        data-isso-gravatar="true"
        data-isso-avatar="false"
        data-isso-vote="true"
        data-vote-levels=""
        src="//{{theme.isso.address}}/js/embed.min.js"></script>
      <section id="isso-thread"></section>  
    {% endif %}
  </div>
{% endif %}
