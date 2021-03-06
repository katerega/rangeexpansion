

example.data <- system.file("examples/example_snp.snapp",
                            package="rangeExpansion")
example.coords <- system.file("examples/example_coordinates.csv",
                            package="rangeExpansion")

region <- list(NULL, c("REGION_1", "REGION_2"))
ploidy <- 2
raw.data <- load.data.snapp(example.data,
                            example.coords,
                            sep=',', ploidy=ploidy)                                

pop <- make.pop(raw.data, ploidy)
psi <- get.all.psi(pop)

res <- run.regions(region=region, pop=pop, psi=psi, xlen=10,ylen=20)

summary(res)
plot(res)
