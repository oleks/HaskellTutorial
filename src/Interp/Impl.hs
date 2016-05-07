module Interp.Impl where

import Ast

eval :: Expr -> Integer
eval (Add e1 e2) = (eval e1) + (eval e2)
eval (Mul e1 e2) = (eval e1) * (eval e2)
eval (Num x) = x
