
### Modelo SIR

SIR <- function(tempo, status, parameteros) {
  par <- as.list(c(status, parameteros))
  with(par, {
    dS <- -beta/N * I * S
    dI <- beta/N * I * S - gamma * I
    dR <- gamma * I
    #N = S + I + R
    list(c(dS, dI, dR))
    })
}
### soma dos quadrados dos residuos para SIR

RSS.SIR <- function(parameteros) {
  names(parameteros) <- c("beta", "gamma")
  out <- ode(y = init, times = Dia, func = SIR, parms = parameteros)
  fit.I <- out[ , 3]
  sum((Infectados - fit.I)^2)
}

