n = 25
R = 800

vec <- rep(0,R)

set.seed(34)

for(i in 1:R){
	rand_gamma <- rgamma(n, shape=(15625/5184), rate=(625/7776))
	vec[i] <- quantile(rand_gamma, probs=0.75)
}

mean(vec)