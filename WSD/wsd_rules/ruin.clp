
(defrule ruin0
(declare (salience 5000))
(id-root ?id ruin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vinASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ruin.clp 	ruin0   "  ?id "  vinASa )" crlf))
)

;"ruin","N","1.vinASa"
(defrule ruin1
(declare (salience 4900))
(id-root ?id ruin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id naRta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ruin.clp 	ruin1   "  ?id "  naRta_kara )" crlf))
)

;"ruin","VT","1.naRta_kara"
;The crops were ruined by the delayed monsoon.            
;If she loses the interest in job it will ruin her.
;

;Added by sheetal(3-12-09).
(defrule ruin2
(declare (salience 4950))
(id-root ?id ruin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 lecture)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIrasa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ruin.clp      ruin2   "  ?id "  nIrasa_kara )" crlf))
)
;The sleeping of students can ruin a lecture .


