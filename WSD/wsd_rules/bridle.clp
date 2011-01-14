
(defrule bridle0
(declare (salience 5000))
(id-root ?id bridle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bridle.clp 	bridle0   "  ?id "  lagAma )" crlf))
)

;"bridle","N","1.lagAma"
;His common sense is a bridle to his quick temper
;
(defrule bridle1
(declare (salience 4900))
(id-root ?id bridle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagAma_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bridle.clp 	bridle1   "  ?id "  lagAma_xe )" crlf))
)

;"bridle","VT","1.lagAma_xenA"
;Bridle horses
;
