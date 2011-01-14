
(defrule detective0
(declare (salience 5000))
(id-root ?id detective)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAsUsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detective.clp 	detective0   "  ?id "  jAsUsI )" crlf))
)

;"detective","Adj","1.jAsUsI"
;Once I got an opportunity to read a thrilling detective novel.
;
(defrule detective1
(declare (salience 4900))
(id-root ?id detective)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAsUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  detective.clp 	detective1   "  ?id "  jAsUsa )" crlf))
)

;"detective","N","1.jAsUsa"
;I appointed a very well known detective to solve the murder case.
;
