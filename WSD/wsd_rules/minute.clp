
(defrule minute0
(declare (salience 5000))
(id-root ?id minute)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) creature)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUkRma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  minute.clp 	minute0   "  ?id "  sUkRma )" crlf))
)

(defrule minute1
(declare (salience 4900))
(id-root ?id minute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id minata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  minute.clp 	minute1   "  ?id "  minata )" crlf))
)

(defrule minute2
(declare (salience 4800))
(id-root ?id minute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUkRma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  minute.clp 	minute2   "  ?id "  sUkRma )" crlf))
)

;"minute","Adj","1.sUkRma"
;It was a minute particle but hurt the eye badly.
;
;
