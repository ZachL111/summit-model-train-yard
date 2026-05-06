module DomainReview (ReviewItem(..), reviewScore, reviewLane) where

data ReviewItem = ReviewItem
  { signal :: Int
  , slack :: Int
  , drag :: Int
  , confidence :: Int
  } deriving (Eq, Show)

reviewScore :: ReviewItem -> Int
reviewScore item = signal item * 2 + slack item + confidence item - drag item * 3

reviewLane :: ReviewItem -> String
reviewLane item
  | reviewScore item >= 140 = "ship"
  | reviewScore item >= 105 = "watch"
  | otherwise = "hold"
