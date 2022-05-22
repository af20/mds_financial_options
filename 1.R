CallPayoff = function(ST, K, is_long=TRUE) {
  if(is_long)
    payoff = pmax(ST-K, 0)
  else
    payoff = K-ST
  return(payoff)
}



ButterflyPayoff = function(ST, K1, K2) {
  #  BUTTERFLY
  #       1. J Long positions in a Call option with a Strike Price K1.
  #       2. H Long positions in a Call option with a Strike Price K2.
  #       3. J + H Short positions in a Call option with a Strike Price "K".
  #           Strike price "K" is a Linear Convex combination of K 1 and K 2 :
  #             "K" = w * K1 + (1 - w) K2, w tra [0, 1] ,    where w = J / J+H
  #       All options are written on the same underlying and they have the same maturity T.

  #       The payoff is: PIT (Butterfly) =
  #                 J max {ST - K1 ; 0} - (J + H) max{ST - "K"; 0} + H max {ST - K2 ; 0}

  J = H = 10
  w = J / (J+H)
  K = w * K1 + (1 - w) * K2
  payoff = J * pmax(ST-K1,0) - (J+H) * pmax(ST-K, 0) + H*pmax(ST-K2, 0)
  return (payoff)
}


ButterflyChart = function(K1, K2, MIN=0, MAX=200) {
  v_payoff = c()
  v_strikes = c()
  for (ST in MIN:MAX){
    payoff = ButterflyPayoff(ST, K1, K2)
    v_payoff[ST] = payoff
    v_strikes[ST] = ST
  }
  #print('   MIN:MAX', length(MIN:MAX), '   v_payoff', length(v_payoff))
  plot(x=v_strikes, y=v_payoff, type="l")
}

# Payoff of a Call Option
CallPayoff(ST=100, K=20)

# Payoff of a Buttefly Strategy
ButterflyChart(K1=80,K2=90, MIN=50, MAX=120)
