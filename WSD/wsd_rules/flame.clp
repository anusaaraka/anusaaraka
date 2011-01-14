
(defrule flame0
(declare (salience 5000))
(id-root ?id flame)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flaming )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Aga_sI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flame.clp  	flame0   "  ?id "  Aga_sI )" crlf))
)

;"flaming","Adj","1.Aga_sI"
;The curry was flaming hot.
;
(defrule flame1
(declare (salience 4900))
(id-root ?id flame)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lapata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flame.clp 	flame1   "  ?id "  lapata )" crlf))
)

;"flame","N","1.lapata"
;The whole building was in flames before the fire brigade arrived on the scene.
;--"2.BadZakIlA_raMga"
;All the flowering bushes were in full bloom turning the whole area in scarlet flames.
;--"3.wIvra_cewana"
;His love letter kindled the flame of passion in	her.
;--"4.premI"
;At the party he met with his old flame.
;
(defrule flame2
(declare (salience 4800))
(id-root ?id flame)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aga_kI_jvAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flame.clp 	flame2   "  ?id "  Aga_kI_jvAlA )" crlf))
)

;"flame","V","1.Aga_kI_jvAlA"
;The flames of the fire were seen from a long distance.
;--"2.Aga_kA_raMga"
;Due to fire the whole area was glowing in flame colour.
;--"3.kroXiwa_honA"
;His hatered flamed anew on strong criticism from his collegues.
;
