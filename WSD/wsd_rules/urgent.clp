
(defrule urgent0
(declare (salience 5000))
(id-root ?id urgent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyAvaSyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  urgent.clp 	urgent0   "  ?id "  awyAvaSyaka )" crlf))
)

(defrule urgent1
(declare (salience 4900))
(id-root ?id urgent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyAvaSyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  urgent.clp 	urgent1   "  ?id "  awyAvaSyaka )" crlf))
)

;"urgent","Adj","1.awyAvaSyaka"
;An urgent telephone call came for her.
;
;
