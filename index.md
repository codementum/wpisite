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
lane_at_cs.wpi.edu<br>
[cv](docs/cv.pdf)

office hours d-term '18: th 430-530p fuller 136<br>
[schedule a meeting](https://calendly.com/lanetharrison/office-hours)

upcoming travel:<br>
Apr 20-26 @[chi2018](https://chi2018.acm.org/)<br>
May 2-20 @Dahgstuhl -> Brussels -> [OpenVisConf](http://www.openvisconf.com/)!<br>

# bio
Lane's research leverages cognitive/perceptual principles and data-driven techniques to understand how people interpret, use, and create data visualizations and visual analytics tools. 
Data visualization is an indispensable tool for analysis and understanding. 
Since we are beginning to rely on visualizations to make high-impact, even life-critical decisions in areas like health and cyber security, we must ensure that people have the best tools for the decisions they face.

Lane was a PostDoc in the Visual Analytics Lab at Tufts (VALT), with [Remco Chang](http://www.cs.tufts.edu/~remco/).
Lane received his PhD from UNC-Charlotte, home of the Charlotte Visualization Center, with [Aidong Lu](https://webpages.uncc.edu/alu1/). 

# news

**mar 2018** | Visiting UMass Amherst to Judge the [2018 ASA Five Colleges DataFest](http://www.science.smith.edu/datafest/)
**mar 2018** | TVCG paper accepted on Visual Features + Correlation Perception with [Fumeng @Brown](http://www.fmyang.com/)
**mar 2018** | Talk @Northeastern with [NUVis](https://nuvis.northeastern.edu/)
**jan 2018** | Two papers accepted to CHI 2018 -- Search+Vis with [Mia](http://www.mifeng.name/) and SPLOM animation with [Helen @USFCA](http://vgl.cs.usfca.edu/)
**dec 2018** | Paper accepted to ICDE 2018 -- Drug-reaction Visual Analytics with [Xiao](http://web.cs.wpi.edu/~xqin/)

<br>

# publications

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


