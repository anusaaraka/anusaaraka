
(defrule comfort0
(declare (salience 5000))
(id-root ?id comfort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  comfort.clp 	comfort0   "  ?id "  ArAma )" crlf))
)

(defrule comfort1
(declare (salience 4900))
(id-root ?id comfort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArAma_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  comfort.clp 	comfort1   "  ?id "  ArAma_xe )" crlf))
)

;"comfort","VT","1.ArAma_xenA"
;This pillow doesn't give me any comfort.
;
;