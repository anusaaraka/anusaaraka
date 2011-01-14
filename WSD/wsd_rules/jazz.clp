
(defrule jazz0
(declare (salience 5000))
(id-root ?id jazz)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SoBA_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jazz.clp	jazz0  "  ?id "  " ?id1 "  SoBA_baDZA  )" crlf))
)

;This necklace will jazz up your saree.
;yaha hAra wumhArI sAdZI kI SoBA baDZA xegA
(defrule jazz1
(declare (salience 4900))
(id-root ?id jazz)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jazz.clp 	jazz1   "  ?id "  jAjZa )" crlf))
)

;default_sense && category=noun	gIwanAtya	0
;"jazz","N","1.gIwanAtya"
;Jazz music has become popular in India also.
;
;