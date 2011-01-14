
(defrule usual0
(declare (salience 5000))
(id-root ?id usual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAXAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  usual.clp 	usual0   "  ?id "  sAXAraNa )" crlf))
)

(defrule usual1
(declare (salience 4900))
(id-root ?id usual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  usual.clp 	usual1   "  ?id "  sAmAnya )" crlf))
)

;"usual","Adj","1.sAmAnya/sAXAraNa/vyAvahArika/saxA_kA"
;She  grew the usual vegetables.
;
;