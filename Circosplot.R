library(circlize)
# Example data
my_list <- Data
# Convert the list to a matrix
my_matrix <- matrix(unlist(my_list), nrow = nrow(Data), byrow = TRUE)
# Add column names to the matrix
colnames(my_matrix) <- c("KO", "KO", "KO", "KO", "WT", "WT", "WT", "WT")
rownames(my_matrix) <- rownames(Data)
# Create the Circos plot
my_subset <- my_matrix[1:100, 1:8]
circos.par(gap.degree = 2) 
chordDiagram(my_subset, transparency = 0.5)

