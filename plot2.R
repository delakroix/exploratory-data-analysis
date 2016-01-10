<!DOCTYPE html>
<html lang='en'>
<head>
<meta charset='utf-8'>
<meta content='IE=edge' http-equiv='X-UA-Compatible'>
<meta content='GitLab Community Edition' name='description'>
<meta content='origin-when-cross-origin' name='referrer'>
<title>plot2.R · master · WeiHsinChen / Repo · GitLab</title>
<link rel="shortcut icon" type="image/x-icon" href="/assets/favicon-0037f4682f7f2d45973338aad43f3d54.ico" />
<link rel="stylesheet" media="all" href="/assets/application-32755ae1e9ab8ff9dd36ad4f47aba9c4.css" />
<link rel="stylesheet" media="print" href="/assets/print-2cb1262fb60ceb73f2fe76fd1a61dccf.css" />
<script src="/assets/application-29243f271de184b06e809d3026b88624.js"></script>
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="ABKpfK4KpDW6ZoQLCrUmdF1DXl9IPi4y/dDNEd1nL2RQPTphvJsvgCLQkaruEuNuvTVHxlzdCBlm5v3kskYLQw==" />
<script>
//<![CDATA[
window.gon={};gon.api_version="v3";gon.default_avatar_url="https://gitlab.eecs.umich.edu/assets/no_avatar-0801eb7ed213327da2a534095a75b248.png";gon.default_issues_tracker="gitlab";gon.max_file_size=10;gon.relative_url_root="";gon.user_color_scheme="white";
//]]>
</script>
<meta content='width=device-width, initial-scale=1, maximum-scale=1' name='viewport'>
<meta content='#474D57' name='theme-color'>
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-iphone-c2b181d197c3b7be4f8ac381458895bb.png" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-ipad-fede15aef7610235936a27957400503a.png" sizes="76x76" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-iphone-retina-88529dea2f9320df1a3cc45d92e86147.png" sizes="120x120" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-ipad-retina-c0dbda7e71802ee480f6d666da4b834a.png" sizes="152x152" />
<meta content='/assets/msapplication-tile-2efcb14bec26fd879dd1914db581f8f9.png' name='msapplication-TileImage'>
<meta content='#30353E' name='msapplication-TileColor'>




<style>
  [data-user-is] {
    display: none !important;
  }
  
  [data-user-is=""] {
    display: block !important;
  }
  
  [data-user-is=""][data-display="inline"] {
    display: inline !important;
  }
  
  [data-user-is-not] {
    display: block !important;
  }
  
  [data-user-is-not][data-display="inline"] {
    display: inline !important;
  }
  
  [data-user-is-not=""] {
    display: none !important;
  }
</style>

</head>

<body class='ui_charcoal' data-page='projects:blob:show'>

<header class='header-expanded navbar navbar-fixed-top navbar-gitlab'>
<div class='container-fluid'>
<div class='header-content'>
<div class='pull-right'>
<a class="btn btn-sign-in btn-success" href="/users/sign_in?redirect_to_referer=yes">Sign in</a>
</div>
<h1 class='title'><span><a href="/groups/WeiHsinChen">WeiHsinChen</a> / <a href="/WeiHsinChen/Repo">Repo</a> &middot; <a href="/WeiHsinChen/Repo/tree/master">Files</a></span></h1>
</div>
</div>
</header>


<div class='page-sidebar-expanded page-with-sidebar'>

<div class='nicescroll sidebar-expanded sidebar-wrapper'>
<div class='header-logo'>
<a class="home" title="Dashboard" id="js-shortcuts-home" href="/"><svg width="36px" height="36px" viewBox="0 0 210 210" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" id="tanuki-logo">
    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">
        <g id="logo" sketch:type="MSLayerGroup" transform="translate(0.000000, 10.000000)">
            <g id="Page-1" sketch:type="MSShapeGroup">
                <g id="Fill-1-+-Group-24">
                    <g id="Group-24">
                        <g id="Group">
                            <path d="M105.0614,193.655 L105.0614,193.655 L143.7014,74.734 L66.4214,74.734 L105.0614,193.655 L105.0614,193.655 Z" id="Fill-4" fill="#E24329" class="tanuki-shape"></path>
                            <path d="M105.0614,193.6548 L66.4214,74.7338 L12.2684,74.7338 L105.0614,193.6548 L105.0614,193.6548 Z" id="Fill-8" fill="#FC6D26" class="tanuki-shape"></path>
                            <path d="M12.2685,74.7341 L12.2685,74.7341 L0.5265,110.8731 C-0.5445,114.1691 0.6285,117.7801 3.4325,119.8171 L105.0615,193.6551 L12.2685,74.7341 L12.2685,74.7341 Z" id="Fill-12" fill="#FCA326" class="tanuki-shape"></path>
                            <path d="M12.2685,74.7342 L66.4215,74.7342 L43.1485,3.1092 C41.9515,-0.5768 36.7375,-0.5758 35.5405,3.1092 L12.2685,74.7342 L12.2685,74.7342 Z" id="Fill-16" fill="#E24329" class="tanuki-shape"></path>
                            <path d="M105.0614,193.6548 L143.7014,74.7338 L197.8544,74.7338 L105.0614,193.6548 L105.0614,193.6548 Z" id="Fill-18" fill="#FC6D26" class="tanuki-shape"></path>
                            <path d="M197.8544,74.7341 L197.8544,74.7341 L209.5964,110.8731 C210.6674,114.1691 209.4944,117.7801 206.6904,119.8171 L105.0614,193.6551 L197.8544,74.7341 L197.8544,74.7341 Z" id="Fill-20" fill="#FCA326" class="tanuki-shape"></path>
                            <path d="M197.8544,74.7342 L143.7014,74.7342 L166.9744,3.1092 C168.1714,-0.5768 173.3854,-0.5758 174.5824,3.1092 L197.8544,74.7342 L197.8544,74.7342 Z" id="Fill-22" fill="#E24329" class="tanuki-shape"></path>
                        </g>
                    </g>
                </g>
            </g>
        </g>
    </g>
</svg>

<div class='gitlab-text-container'>
<h3>GitLab</h3>
</div>
</a></div>
<ul class='nav nav-sidebar'>
<li class=""><a title="Go to group" class="back-link" href="/groups/WeiHsinChen"><i class="fa fa-caret-square-o-left fa-fw"></i>
<span>
Go to group
</span>
</a></li><li class='separate-item'></li>
<li class="home"><a title="Project" class="shortcuts-project" href="/WeiHsinChen/Repo"><i class="fa fa-home fa-fw"></i>
<span>
Project
</span>
</a></li><li class=""><a title="Activity" class="shortcuts-project-activity" href="/WeiHsinChen/Repo/activity"><i class="fa fa-dashboard fa-fw"></i>
<span>
Activity
</span>
</a></li><li class="active"><a title="Files" class="shortcuts-tree" href="/WeiHsinChen/Repo/tree/master"><i class="fa fa-files-o fa-fw"></i>
<span>
Files
</span>
</a></li><li class=""><a title="Commits" class="shortcuts-commits" href="/WeiHsinChen/Repo/commits/master"><i class="fa fa-history fa-fw"></i>
<span>
Commits
</span>
</a></li><li class=""><a title="Builds" class="shortcuts-builds" href="/WeiHsinChen/Repo/builds"><i class="fa fa-cubes fa-fw"></i>
<span>
Builds
<span class='count builds_counter'>0</span>
</span>
</a></li><li class=""><a title="Graphs" class="shortcuts-graphs" href="/WeiHsinChen/Repo/graphs/master"><i class="fa fa-area-chart fa-fw"></i>
<span>
Graphs
</span>
</a></li><li class=""><a title="Milestones" href="/WeiHsinChen/Repo/milestones"><i class="fa fa-clock-o fa-fw"></i>
<span>
Milestones
</span>
</a></li><li class=""><a title="Issues" class="shortcuts-issues" href="/WeiHsinChen/Repo/issues"><i class="fa fa-exclamation-circle fa-fw"></i>
<span>
Issues
<span class='count issue_counter'>0</span>
</span>
</a></li><li class=""><a title="Merge Requests" class="shortcuts-merge_requests" href="/WeiHsinChen/Repo/merge_requests"><i class="fa fa-tasks fa-fw"></i>
<span>
Merge Requests
<span class='count merge_counter'>0</span>
</span>
</a></li><li class=""><a title="Labels" href="/WeiHsinChen/Repo/labels"><i class="fa fa-tags fa-fw"></i>
<span>
Labels
</span>
</a></li><li class=""><a title="Wiki" class="shortcuts-wiki" href="/WeiHsinChen/Repo/wikis/home"><i class="fa fa-book fa-fw"></i>
<span>
Wiki
</span>
</a></li><li class='hidden'>
<a title="Network" class="shortcuts-network" href="/WeiHsinChen/Repo/network/master">Network
</a></li>
</ul>

<div class='collapse-nav'>
<a class="toggle-nav-collapse" title="Open/Close" href="#"><i class="fa fa-angle-left"></i></a>

</div>
</div>
<div class='content-wrapper'>
<div class='flash-container'>
</div>


<div class='container-fluid container-limited'>
<div class='content'>
<div class='clearfix'>


<div class='tree-holder' id='tree-holder'>
<div class='gray-content-block top-block'>
<div class='tree-ref-holder'>
<form class="project-refs-form" action="/WeiHsinChen/Repo/refs/switch" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" />
<select name="ref" id="ref" class="project-refs-select select2 select2-sm"><optgroup label="Branches"><option selected="selected" value="master">master</option></optgroup><optgroup label="Tags"></optgroup></select>
<input type="hidden" name="destination" id="destination" value="blob" />
<input type="hidden" name="path" id="path" value="plot2.R" />
</form>


</div>
<ul class='breadcrumb repo-breadcrumb'>
<li>
<a href="/WeiHsinChen/Repo/tree/master">Repo
</a></li>
<li>
<a href="/WeiHsinChen/Repo/blob/master/plot2.R"><strong>
plot2.R
</strong>
</a></li>
</ul>
</div>
<ul class='blob-commit-info hidden-xs'>
<li class='commit js-toggle-container' id='commit-28b8b8a7'>
<div class='commit-row-title'>
<strong class='str-truncated'>
<a class="commit-row-message" href="/WeiHsinChen/Repo/commit/28b8b8a7338d5cc867aac820356025352941385f">first commit</a>
</strong>
<div class='pull-right'>
<button class="btn btn-xs btn-clipboard" data-clipboard-text="28b8b8a7338d5cc867aac820356025352941385f" type="button"><i class="fa fa-clipboard"></i></button>
<a class="commit_short_id" href="/WeiHsinChen/Repo/commit/28b8b8a7338d5cc867aac820356025352941385f">28b8b8a7</a>
</div>
<div class='notes_count'>
</div>
</div>
<div class='commit-row-info'>
<a class="commit-author-link has_tooltip" data-original-title="wwwllllfrank@hotmail.com" href="mailto:wwwllllfrank@hotmail.com"><img class="avatar s24" width="24" alt="" src="https://secure.gravatar.com/avatar/faa9eb3b26f2ca54075ae9f3e2ff62f7?s=48&amp;d=identicon" /> <span class="commit-author-name">WeiHsinChen</span></a>
authored
<div class='committed_ago'>
<time class="time_ago js-timeago js-timeago-pending" datetime="2014-05-11T15:05:07Z" title="May 11, 2014 3:05pm" data-toggle="tooltip" data-placement="top" data-container="body">2014-05-11 23:05:07 +0800</time> &nbsp;
</div>
<a class="pull-right" href="/WeiHsinChen/Repo/tree/28b8b8a7338d5cc867aac820356025352941385f">Browse Files »</a>
</div>
</li>

</ul>
<div class='blob-content-holder' id='blob-content-holder'>
<article class='file-holder'>
<div class='file-title'>
<i class="fa fa-file-text-o fa-fw"></i>
<strong>
plot2.R
</strong>
<small>
797 Bytes
</small>
<div class='file-actions hidden-xs'>
<div class='btn-group tree-btn-group'>
<a class="btn btn-sm" target="_blank" href="/WeiHsinChen/Repo/raw/master/plot2.R">Raw</a>
<a class="btn btn-sm" href="/WeiHsinChen/Repo/blame/master/plot2.R">Blame</a>
<a class="btn btn-sm" href="/WeiHsinChen/Repo/commits/master/plot2.R">History</a>
<a class="btn btn-sm" href="/WeiHsinChen/Repo/blob/23be6df3bc2e3e4c21e7ac834f37e252d49eadae/plot2.R">Permalink</a>
</div>

</div>
</div>
<div class='file-content code'>
<div class='code file-content js-syntax-highlight white'>
<div class='line-numbers'>
<a data-line-number='1' href='#L1' id='L1'>
<i class='fa fa-link'></i>
1
</a>
<a data-line-number='2' href='#L2' id='L2'>
<i class='fa fa-link'></i>
2
</a>
<a data-line-number='3' href='#L3' id='L3'>
<i class='fa fa-link'></i>
3
</a>
<a data-line-number='4' href='#L4' id='L4'>
<i class='fa fa-link'></i>
4
</a>
<a data-line-number='5' href='#L5' id='L5'>
<i class='fa fa-link'></i>
5
</a>
<a data-line-number='6' href='#L6' id='L6'>
<i class='fa fa-link'></i>
6
</a>
<a data-line-number='7' href='#L7' id='L7'>
<i class='fa fa-link'></i>
7
</a>
<a data-line-number='8' href='#L8' id='L8'>
<i class='fa fa-link'></i>
8
</a>
<a data-line-number='9' href='#L9' id='L9'>
<i class='fa fa-link'></i>
9
</a>
<a data-line-number='10' href='#L10' id='L10'>
<i class='fa fa-link'></i>
10
</a>
<a data-line-number='11' href='#L11' id='L11'>
<i class='fa fa-link'></i>
11
</a>
<a data-line-number='12' href='#L12' id='L12'>
<i class='fa fa-link'></i>
12
</a>
<a data-line-number='13' href='#L13' id='L13'>
<i class='fa fa-link'></i>
13
</a>
<a data-line-number='14' href='#L14' id='L14'>
<i class='fa fa-link'></i>
14
</a>
</div>
<div class='blob-content' data-blob-id='4e63d6cc32516cf549ca75c6ccc8e20b6c06bcba'>
<pre class="code highlight"><code><span id="LC1" class="line"><span class="n">df</span> <span class="o">&lt;-</span> <span class="n">read.table</span><span class="p">(</span><span class="s2">&quot;household_power_consumption.txt&quot;</span><span class="p">,</span> <span class="n">skip</span> <span class="o">=</span> <span class="m">66637</span><span class="p">,</span> <span class="n">nrow</span> <span class="o">=</span> <span class="m">2880</span><span class="p">,</span> <span class="n">sep</span> <span class="o">=</span> <span class="s2">&quot;;&quot;</span><span class="p">)</span></span>&#x000A;<span id="LC2" class="line"><span class="n">name</span> <span class="o">&lt;-</span> <span class="n">sapply</span><span class="p">(</span><span class="n">read.table</span><span class="p">(</span><span class="s2">&quot;household_power_consumption.txt&quot;</span><span class="p">,</span> <span class="n">nrow</span> <span class="o">=</span> <span class="m">1</span><span class="p">,</span> <span class="n">sep</span> <span class="o">=</span> <span class="s2">&quot;;&quot;</span><span class="p">),</span> <span class="n">as.character</span><span class="p">)</span></span>&#x000A;<span id="LC3" class="line"><span class="n">names</span><span class="p">(</span><span class="n">df</span><span class="p">)</span> <span class="o">&lt;-</span> <span class="n">name</span></span>&#x000A;<span id="LC4" class="line"><span class="n">df</span><span class="o">$</span><span class="n">DateTime</span> <span class="o">&lt;-</span> <span class="n">strptime</span><span class="p">(</span><span class="n">paste</span><span class="p">(</span><span class="n">df</span><span class="o">$</span><span class="n">Date</span><span class="p">,</span> <span class="n">df</span><span class="o">$</span><span class="n">Time</span><span class="p">),</span> <span class="n">format</span><span class="o">=</span><span class="s2">&quot;%d/%m/%Y %H:%M:%S&quot;</span><span class="p">)</span></span>&#x000A;<span id="LC5" class="line"><span class="k">for</span><span class="p">(</span> <span class="n">i</span> <span class="k">in</span> <span class="m">3</span><span class="o">:</span><span class="m">9</span> <span class="p">){</span></span>&#x000A;<span id="LC6" class="line">    <span class="n">df</span><span class="p">[[</span><span class="n">i</span><span class="p">]]</span> <span class="o">&lt;-</span> <span class="n">sapply</span><span class="p">(</span><span class="n">df</span><span class="p">[[</span><span class="n">i</span><span class="p">]],</span> <span class="n">as.character</span><span class="p">)</span></span>&#x000A;<span id="LC7" class="line">    <span class="n">df</span><span class="p">[[</span><span class="n">i</span><span class="p">]]</span> <span class="o">&lt;-</span> <span class="n">sapply</span><span class="p">(</span><span class="n">df</span><span class="p">[[</span><span class="n">i</span><span class="p">]],</span> <span class="n">as.numeric</span><span class="p">)</span></span>&#x000A;<span id="LC8" class="line"><span class="p">}</span></span>&#x000A;<span id="LC9" class="line"><span class="n">win.graph</span><span class="p">(</span><span class="m">200</span><span class="p">,</span><span class="m">200</span><span class="p">)</span></span>&#x000A;<span id="LC10" class="line"><span class="n">with</span><span class="p">(</span><span class="n">df</span><span class="p">,</span> <span class="n">plot</span><span class="p">(</span><span class="n">DateTime</span><span class="p">,</span> <span class="n">Global_active_power</span><span class="p">,</span> <span class="n">type</span> <span class="o">=</span> <span class="s2">&quot;n&quot;</span><span class="p">,</span> <span class="n">xlab</span> <span class="o">=</span> <span class="s2">&quot;daytime&quot;</span><span class="p">,</span> <span class="n">ylab</span> <span class="o">=</span> <span class="s2">&quot;Global Active Power (kilowatts)&quot;</span> <span class="p">,</span> <span class="n">axes</span> <span class="o">=</span> <span class="n">F</span><span class="p">,</span> <span class="n">frame.plot</span><span class="o">=</span><span class="n">TRUE</span><span class="p">))</span></span>&#x000A;<span id="LC11" class="line"><span class="n">axis</span><span class="p">(</span><span class="m">1</span><span class="p">,</span> <span class="n">at</span><span class="o">=</span><span class="n">c</span><span class="p">(</span><span class="n">as.numeric</span><span class="p">(</span><span class="n">min</span><span class="p">(</span><span class="n">df</span><span class="o">$</span><span class="n">DateTime</span><span class="p">)),</span> <span class="n">as.numeric</span><span class="p">(</span><span class="n">min</span><span class="p">(</span><span class="n">df</span><span class="o">$</span><span class="n">DateTime</span><span class="p">))</span><span class="m">+86400</span></span>&#x000A;<span id="LC12" class="line">             <span class="p">,</span> <span class="n">as.numeric</span><span class="p">(</span><span class="n">min</span><span class="p">(</span><span class="n">df</span><span class="o">$</span><span class="n">DateTime</span><span class="p">))</span><span class="m">+2</span><span class="o">*</span><span class="m">86400</span><span class="p">),</span> <span class="n">labels</span><span class="o">=</span><span class="n">c</span><span class="p">(</span><span class="s2">&quot;Thu&quot;</span><span class="p">,</span> <span class="s2">&quot;Fri&quot;</span><span class="p">,</span> <span class="s2">&quot;Sat&quot;</span><span class="p">))</span></span>&#x000A;<span id="LC13" class="line"><span class="n">axis</span><span class="p">(</span><span class="m">2</span><span class="p">,</span> <span class="n">yaxs</span> <span class="o">=</span> <span class="s2">&quot;r&quot;</span><span class="p">)</span></span>&#x000A;<span id="LC14" class="line"><span class="n">with</span><span class="p">(</span><span class="n">df</span><span class="p">,</span> <span class="n">points</span><span class="p">(</span><span class="n">DateTime</span><span class="p">,</span> <span class="n">Global_active_power</span><span class="p">,</span> <span class="n">type</span> <span class="o">=</span> <span class="s2">&quot;l&quot;</span><span class="p">))</span></span></code></pre>&#x000A;
</div>
</div>

</div>

</article>
</div>

</div>

</div>
</div>
</div>
</div>
</div>



</body>
</html>

