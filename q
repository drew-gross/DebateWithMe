[1mdiff --cc app/views/debates/show.html.erb[m
[1mindex 551adc5,dbe92e9..0000000[m
[1m--- a/app/views/debates/show.html.erb[m
[1m+++ b/app/views/debates/show.html.erb[m
[36m@@@ -5,35 -5,23 +5,59 @@@[m
    <%= @debate.proposition %>[m
  </p>[m
  [m
[32m++<<<<<<< HEAD[m
[32m +<div id="points">[m
[32m +  <div id="supporting">[m
[32m +    <p>[m
[32m +      <b>Supporting Points</b>[m
[32m +    </p>[m
[32m +    <%= render :partial => "responses/response", :collection => @debate.responses %>[m
[32m +    [m
[32m +    <p>[m
[32m +      <b>Support this proposition:</b>[m
[32m +    </p>[m
[32m +    <%= render "responses/form" %>[m
[32m +  </div>[m
[32m++=======[m
[32m+ <h2>Supporting Points</h2>[m
[32m+ <% @debate.responses.each do |response| %>[m
[32m+   <p>[m
[32m+     <%= response.body %>[m
[32m+   </p>[m
[32m+ <% end %>[m
[32m++>>>>>>> parent of 8c89e81... basic auth added[m
[32m +[m
[32m +  <div id="refuting">[m
[32m +    <p>[m
[32m +      <b>Refuting Points</b>[m
[32m +    </p>[m
[32m +    <%= render :partial => "responses/response", :collection => @debate.responses %>[m
  [m
[32m++<<<<<<< HEAD[m
[32m +    <p>[m
[32m +      <b>Refute this proposition:</b>[m
[32m +    </p>[m
[32m +    <%= render "responses/form" %>[m
[32m +  </div>[m
[32m +</div>[m
[32m +  [m
  [m
[32m +<div id="footer">[m
[32m +  <%= link_to 'Edit Proposition', edit_debate_path(@debate) %> |[m
[32m +  <%= link_to 'Back to all debates', debates_path %> | [m
[32m +  <%= link_to 'Delete this debate', @debate, :method => :delete %>[m
[32m +</div>[m
[32m++=======[m
[32m+ <h2>Support this proposition:</h2>[m
[32m+ <%= form_for([@debate, @debate.responses.build]) do |f| %>[m
[32m+   <div class="field">[m
[32m+     <%= f.text_area :body %>[m
[32m+   </div>[m
[32m+   <div class="actions">[m
[32m+     <%= f.submit %>[m
[32m+   </div>[m
[32m+ <% end %>[m
[32m+ [m
[32m+ <%= link_to 'Edit Proposition', edit_debate_path(@debate) %> |[m
[32m+ <%= link_to 'Back to all debates', debates_path %>[m
[32m++>>>>>>> parent of 8c89e81... basic auth added[m
* Unmerged path app/models/response.rb
[1mdiff --git a/app/models/response.rb b/app/models/response.rb[m
* Unmerged path app/views/responses/_form.html.erb
[1mdiff --git a/app/views/responses/_form.html.erb b/app/views/responses/_form.html.erb[m
