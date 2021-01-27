async function drawScatter() {
  // load data
  let dat = await d3.json("./../../my_weather_data.json")

  // create access functions
  const dat_x = d => d.dewPoint
  const dat_y = d => d.humidity

  // create chart dimensions
  const width = d3.min([
    window.innerWidth * 0.9,
    window.innerHeight * 0.9
  ])

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

  // create bound widths
  dim.bound_width = dim.width - dim.margin.left - dim.margin.right
  dim.bound_height = dim.height - dim.margin.top - dim.margin.bottom
  // create wrapper, append svg and dimensions
  const wrapper = d3.select("#wrapper")
    .append("svg")
    .attr("width",dim.width)
    .attr("height",dim.height)
  // create chart
  const chart = wrapper.append("g")
  .style("transform",
  `translate(${dim.margin.left}px, ${dim.margin.top}px)`
  )
  // create scales
  const x_scale = d3.scaleLinear()
    .domain(d3.extent(dat,dat_x))
    .range([0,dim.bound_width])
    .nice()
  const y_scale = d3.scaleLinear()
    .domain(d3.extent(dat,dat_y))
    .range([dim.bound_height, 0])
    .nice()

  // draw data

  dat.forEach(d => {
    chart
    .append("circle")
    .attr("cx", x_scale(dat_x(d)))
    .attr("cy", y_scale(dat_y(d)))
    .attr("r", 5)
  })

  let dots = chart.selectAll("circle")
  console.log(dots)
  dots = dots.data(dat)
  console.log(dots)




}
drawScatter()

