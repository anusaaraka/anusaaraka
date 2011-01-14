
(defrule reject0
(declare (salience 5000))
(id-root ?id reject)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asvIkqwa_vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reject.clp 	reject0   "  ?id "  asvIkqwa_vaswu )" crlf))
)

;"reject","N","1.asvIkqwa_vaswu"
;These pairs of shoes are export rejects. 
;
(defrule reject1
(declare (salience 4900))
(id-root ?id reject)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAmaMjUra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reject.clp 	reject1   "  ?id "  nAmaMjUra_kara )" crlf))
)

;nAmamjUra karnA is better than PeMkanA.
; It covers all the three senses given below.
;"reject","VT","1.PezkanA"
;Her proposal was finally rejected by the committee.
;--"2.asvIkAra_karanA"
;Imperfect articles are rejected by the editor.  
;--"3.na_cAhanA"
;The child was rejected by its parents.
;
