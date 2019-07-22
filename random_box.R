# brief explanation of this simulation can be found in README.md in this folder
# red ball is 1, blue ball is 0 for this

# amount_box : number of boxes in this simulation
# times: how many times we run the simulation
amount_box <- 8
times <- 10000

# initiate the boxes and number of red balls in each box
boxes <- 1:amount_box

results <- NULL
box_numbers <- NULL 
# simulation
for (i in 1:times) {
  box_number <- sample(1:amount_box, 1)
  balls_box <- c(rep(1, box_number), rep(0, amount_box - box_number))
  picked_ball <- balls_box[sample(1:amount_box, 1)]

  # store numbers
  box_numbers <- c(box_numbers, box_number)
  results <- c(results, picked_ball)
}

hist(box_numbers)
prob <- sum(results) / times
