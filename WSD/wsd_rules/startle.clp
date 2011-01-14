
(defrule startle0
(declare (salience 5000))
(id-root ?id startle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id startling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cOMkA_xene_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  startle.clp  	startle0   "  ?id "  cOMkA_xene_vAlA )" crlf))
)

;"startling","Adj","1.cOMkA xene vAlA"
;The sound of the crackers is really startling.
;
(defrule startle1
(declare (salience 4900))
(id-root ?id startle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id startled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cOMkA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  startle.clp  	startle1   "  ?id "  cOMkA_huA )" crlf))
)

;"startled","Adj","1.cOMkA huA"
;The child was so startled that he could not move.
;
;
(defrule startle2
(declare (salience 4800))
(id-root ?id startle)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOMkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  startle.clp 	startle2   "  ?id "  cOMkA )" crlf))
)

(defrule startle3
(declare (salience 4700))
(id-root ?id startle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  startle.clp 	startle3   "  ?id "  cOMka )" crlf))
)

;default_sense && category=verb	cOMkA	0
;"startle","V","1.cOMkAnA"
;This magician startle everybody with his tricks.
;
;
