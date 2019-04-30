#lang racket/gui

;;; purpose

; to build a string index of the given CSV file column description (semi-colon delimited)

;;; consts

(define appname "CSV index builder")

;;; defs

;; converts a list to string
(define (convert-list-to-string l)
  (apply string-append l))

;; if a value is false or an empty string
(define (empty-or-no v)
  (or (not v) (string=? v "")))

;; builds a string out of an index and a string
(define (append-index-string n s1 s2)
  (if (non-empty-string? s2)
      (string-append "// " (number->string n) " - " s1 " = " s2 "\n")
      (string-append "// " (number->string n) " - " s1 "\n")))

;; builds an index list of the given list
(define (build-csv-column-index l1 l2)
  (map append-index-string (build-list (length l1) (λ (x) (+ 1 x))) l1 l2))

;;; main

; gather csv index
(define csv-delimiter (get-text-from-user appname "Please enter de CSV delimiter (i.e. ; or ,):" #f ";"))
(when (empty-or-no csv-delimiter) (exit 0))
(define csv-header (get-text-from-user appname "Please paste the CSV column header:"))
(when (empty-or-no csv-header) (exit 0))
(define csv-sample-line (get-text-from-user appname "Please paste the first CSV line for sampling:"))
(when (empty-or-no csv-sample-line) (exit 0))

; converts csv header line to list and builds the index string, displays it
(define csv-column-list (string-split csv-header csv-delimiter))
(define csv-values-list (string-split csv-sample-line csv-delimiter))

; if number of columns and values don't match, display error and quit
(when (not (= (length csv-column-list)
              (length csv-values-list)))
  (begin
    (message-box appname "Number of columns and values do not match. Aborting.")
    (exit 0)))

; build index/column/sample-value string
(define csv-column-index-string (convert-list-to-string (build-csv-column-index csv-column-list csv-values-list)))
(void (message-box appname csv-column-index-string #f (list 'ok 'no-icon)))

; EOF
