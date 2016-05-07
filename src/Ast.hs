module Ast where

data Expr = Add Expr Expr
          | Mul Expr Expr
          | Num Integer
          deriving (Eq, Ord, Show)
