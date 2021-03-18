'async function drawLineChart() {
  /* d3 template */


  // 1. Access data
  const dat = await d3.json("file.json")
use_roxy
  // 2. Create chart dimE09139E091396adsafdsfaf

  let dim = {
    width: width,
    height: width,
    margin: {
      top: 10,
      right: 10,
      bottom: 50,
      left: 50,
    },
  }

  // 3. draw canvas

  // create bound widths
  dim.bound_width = dim.width - dim.margin.left - dim.margin.right
  dim.bound_height = dim.height - dim.margin.top - dim.margin.bottom

  // create wrapper, append svg and dimensions
  const wrapper = d3.select("#wrapper")
    .append("svg")
    .attr("width",dim.width)
    .attr("height",dim.height)

  // create bounds
  const bounds = wrapper.append("g")
  .style("transform",
  `translate(${dim.margin.left}px, ${dim.margin.top}px)`
  )


  // 4. Create scales
  /* example of date x scale
  const x_scale = d3.scaleTime()
  .domain(d3.extent(dat, dat_x))
  .range([0, dim.bound_width])
  */

  /* example of linear y scale
  const y_scale = d3.scaleLinear()
  .doman(d3.extent(dat,dat_y))
  .range([dim.bound_height, 0])
  */



  // 5. Draw data

  const lineGenerator = d3.line()
  .x(d => xScale(dat_x(d)))
  .y(d => yScale(dat_y(d)))

  const line = bounds.append("path")
  .attr("d", lineGenerator(dataset))
  .attr("fill", "none")
  .attr("stroke", "#af9358")

  // 6. Draw peripherals

  const yAxisGenerator = d3.axisLeft()
  .scale(yScale)

  const yAxis = bounds.append("g")
  .call(yAxisGenerator)

  const xAxisGenerator = d3.axisBottom()
  .scale(xScale)

  const xAxis = bounds.append("g")
  .call(xAxisGenerator)
  .style("transform", `translateY(${
    dim.bound_height
  }px)`)
}'
