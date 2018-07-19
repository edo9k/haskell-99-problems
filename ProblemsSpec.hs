module ProblemsSpec where

import Test.Hspec
import Problems

main :: IO ()
main = hspec $ do
  describe "plast" $ do
    it "returns an error if given an empty set" $
      plast [] `shouldBe` error "Empty sets are not allowed"

    it "returns the last element of a list" $
      plast [1, 2, 3] `shouldBe` 3

    it "should also work with characters" $
      plast "abc" `shouldBe` 'c'
      
