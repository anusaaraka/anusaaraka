
(defrule saxon0
(declare (salience 5000))
(id-root ?id saxon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sEksan_saMbanXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  saxon.clp 	saxon0   "  ?id "  sEksan_saMbanXI )" crlf))
)

;"saxon","Adj","1.sEksan_saMbanXI"
;We can see saxon churches in some places of india.
;
(defrule saxon1
(declare (salience 4900))
(id-root ?id saxon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sEksan))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  saxon.clp 	saxon1   "  ?id "  sEksan )" crlf))
)

;"saxon","N","1.sEksan"
;He is a inhabitant of saxon.
;
