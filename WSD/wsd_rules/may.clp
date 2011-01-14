
(defrule may0
(declare (salience 5000))
(id-root ?id may)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMBava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  may.clp 	may0   "  ?id "  saMBava )" crlf))
)

(defrule may1
(declare (salience 4900))
(id-root ?id may)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id proper_noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  may.clp 	may1   "  ?id "  maI )" crlf))
)

(defrule may2
(declare (salience 4800))
(id-root ?id may)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id modal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samBavawaH))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  may.clp 	may2   "  ?id "  samBavawaH )" crlf))
)

;"may","MV","1.samBavawaH"
;This medicine may soothe your cough.
;
;
