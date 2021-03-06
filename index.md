---
layout: page
title: home
---

<style>
.headshot
{
  float: right;
  height: 200px;
  margin-left: 32px;
  margin-bottom: 16px;
}

.me
{
    font-weight: bolder;
}

.title
{
    font-weight: bolder;
}

.award
{
    font-weight: bolder;
    color: #E86C4B;
}

.venue
{
    color: gray;
}

.authors
{
    color: #185A7C;
}



.preview {
  float: left;
  margin-right: 16px;
  margin-top: 2px;
}

.preview img {
  width: 128px;
  height: 64px;
  border-radius: 8px;
}

.pub {
  margin-top: 32px;
  padding-bottom: 8px;
}

.info {
  display: table-cell;
  line-height: 1.2em;
  width: 700px;
}

td:nth-child(2) {
  padding-left: 1em;
}


</style>

<img class="headshot" src='img/lane-round.png'>

assistant professor, [cs](https://www.wpi.edu/academics/departments/computer-science) +[[ds](https://www.wpi.edu/academics/departments/data-science),  [imgd](https://www.wpi.edu/academics/departments/interactive-media-game-development), [bcb](https://www.wpi.edu/academics/departments/bioinformatics-computational-biology)]<br>
ltharrison_at_wpi.edu<br>
[cv](docs/cv.pdf)

office hours: <br>
[schedule a meeting](https://calendly.com/lanetharrison/office-hours)

upcoming travel:<br>
n/a (🦠)

# bio

Lane's research leverages quantitative and computational methods to understand and shape how people interpret, use, and create data visualizations and visual analytics tools. 
Data visualization is an indispensable tool for analysis and understanding. 
As we begin rely more on data visualizations when making high-impact, even life-critical decisions in areas like health and cyber security, we must ensure that people have the best tools and information for the decisions they face.

Lane was a PostDoc in the Visual Analytics Lab at Tufts (VALT), with [Remco Chang](http://www.cs.tufts.edu/~remco/).
Lane received his PhD from UNC-Charlotte, home of the Charlotte Visualization Center, with [Aidong Lu](https://webpages.uncc.edu/alu1/). 

# recent publications

also see [google scholar](https://scholar.google.com/citations?hl=en&user=0RPdShUAAAAJ&view_op=list_works&sortby=pubdate)

<div id="pubs">
</div>

<script type="text/javascript">

d3.json('_data/pubs.json', function(d){
    renderPubs(d.publications, '#pubs');
});

function renderPubs(d, target){
  var div = d3.select(target);

  // div's for pubs
  var pubs = div.selectAll('publication')
      .data(d)
      .enter().append('div')
      .classed('pub', true);

  var prev = pubs.append('div')
    .classed('preview', true);

  prev.append('a')
    .append('img')
    .attr('src', function(d) { 
      if(d.preview) return d.preview;
      else return 'img/icon-wide.png'; 
    });

  var info = pubs.append('div')
    .classed('info', true);


  // title
  var titles = info.append('div')
      .classed('title', true)
      .text(function(d) { return d.title; })

  // authors
  info.append('div')
      .classed('authors', true)
      .html(function(d) { 
        return d.author.replace('Lane Harrison', '<span class="me">Lane Harrison</span>'); 
      });

  // venue, year
  info.append('div')
      .classed('venue', true)
      .text(function(d) { return d.journal +', '+ d.year; });

  // award
  info.filter(function(d) { return d.award || ''; })
      .append('div')
      .classed('award', true)
      .text(function(d) { return d.award; });

  // links for bib and pdf
  info.filter(function(d) { return d.pdf || ''; })
      .append('a')
      .attr('href', function(d) { return d.pdf; })
      .text(function(d) { return "pdf"; });
}
</script>


