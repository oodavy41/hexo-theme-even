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
