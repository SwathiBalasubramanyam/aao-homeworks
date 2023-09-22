let backgroundColors = ['#cdb4db', '#ffc8dd', '#ffafcc', '#bde0fe', '#a2d2ff']

let graphBackgroundColors = []
while (graphBackgroundColors.length <= 10){
    graphBackgroundColors = graphBackgroundColors.concat(backgroundColors)
}

console.log(graphBackgroundColors);