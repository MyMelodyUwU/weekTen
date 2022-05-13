poly_dat = read.csv("poly_data.csv", header = TRUE)
poly_dat


summary(lm(flow~temp, data =poly_dat))

poly.linear = lm(weight ~ flow, data = poly_dat)
poly.quad = lm(weight ~ flow + I(flow^2), data = poly_dat)
poly.cubic = lm(weight ~ flow + I(flow^2) + I(flow^3), data = poly_dat)
poly.quart = lm(weight ~ flow + I(flow^2) + I(flow^3) + I(flow^4), data = poly_dat)
anova(poly.quart)