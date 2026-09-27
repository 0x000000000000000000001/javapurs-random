module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Effect.Random (random, randomBool, randomInt, randomRange)
import Test.Assert (assert)

main :: Effect Unit
main = do
  log "Testing random..."
  n <- random
  assert $ n >= 0.0 && n < 1.0

  log "Testing randomBool..."
  _ <- randomBool
  pure unit

  log "Testing randomInt..."
  i <- randomInt 1 10
  assert $ i >= 1 && i <= 10

  log "Testing randomRange..."
  r <- randomRange 1.0 10.0
  assert $ r >= 1.0 && r < 10.0

  log "All tests passed!"
