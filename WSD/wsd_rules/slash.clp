
;Added by Meena(28.01.10)
;He was notorious for slashing his canvases to pieces in fits of frustration . 
(defrule slash0
(declare (salience 4900))
(id-root ?id slash)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIra))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slash.clp     slash0   "  ?id "  cIra )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  slash.clp      slash0   "  ?id " ko )" crlf)
)
)



;Salience reduced by Meena(28.01.10)
(defrule slash1
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id slash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slash.clp 	slash1   "  ?id "  cIra )" crlf))
)

;"slash","V","1.cIranA"
;The sharp iron piece slashed her car tyres.
;


;Salience reduced by Meena(28.01.10)
(defrule slash2
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id slash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slash.clp     slash2   "  ?id "  cIrA )" crlf))
)

;"slash","N","1.cIrA"
;The victim had a big slash on his neck.
;

