#lang info

(define shill-plugin-name 'cell)
(define shill-plugin-require 'shill-cell/cell)
(define shill-plugin-ambient '(make-cell make-mut-cell))
(define shill-plugin-interfaces '(cell mut-cell))
