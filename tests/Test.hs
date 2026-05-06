import PortfolioCore
import DomainReview

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 70 78 13 15 7
  expect (score signalcase_1 == 102)
  expect (classify signalcase_1 == "review")
  let signalcase_2 = Signal 63 77 12 9 11
  expect (score signalcase_2 == 148)
  expect (classify signalcase_2 == "review")
  let signalcase_3 = Signal 94 89 15 17 5
  expect (score signalcase_3 == 133)
  expect (classify signalcase_3 == "review")
  let domainReview = ReviewItem 47 28 32 89
  expect (reviewScore domainReview == 115)
  expect (reviewLane domainReview == "watch")
