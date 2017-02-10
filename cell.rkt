#lang racket/base

(require shill/plugin)

(provide (interface-out cell)
         (interface-out mut-cell)
         make-cell
         make-mut-cell)

(interface cell (get))
(interface mut-cell cell (put))

(capability
 cell-impl cell (content)
 (define/ctor (make-cell init)
   init)
 (define/op (get)
   (cell-impl-content this)))
  
(capability
 mut-cell-impl mut-cell ([content #:mutable])
 (define/ctor (make-mut-cell init)
   init)
 (define/op (get)
   (mut-cell-impl-content this))
 (define/op (put value)
   (set-mut-cell-impl-content! this value)))
