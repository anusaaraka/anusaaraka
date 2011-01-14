
(defrule heap0
(declare (salience 5000))
(id-root ?id heap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DZera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heap.clp 	heap0   "  ?id "  DZera )" crlf))
)

;"heap","N","1.DZera"
;There is a heap of garbage near the house . 
;Gara ke pAsa kUde kA DZera padZA hE.
;
(defrule heap1
(declare (salience 4900))
(id-root ?id heap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dera_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heap.clp 	heap1   "  ?id "  Dera_lagA )" crlf))
)

;"heap","V","1.Dera_lagAnA"
;The farmer heaped the crop in the field .
;kisAna ne Kewa meM Pasala kA DZera lagA xiyA .
;
