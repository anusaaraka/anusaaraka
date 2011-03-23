
(defrule affect0
(declare (salience 5000))
(id-root ?id affect)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id affecting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praBAvapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  affect.clp  	affect0   "  ?id "  praBAvapUrNa )" crlf))
)

;"affecting","Adj","1.praBAvapUrNa"
;The film I recently saw had many affecting scenes, && all the people were crying.
;
(defrule affect1
(declare (salience 4900))
(id-root ?id affect)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id affected )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id banAvatI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  affect.clp  	affect1   "  ?id "  banAvatI )" crlf))
)

;"affected","Adj","1.banAvatI"
;He showed affected feelings of sadness when his uncle died.
;




;Modified by Meena(17.3.11);have added (assert (kriyA_id-object_viBakwi ?id ko)) and changed the meaning from "praBAva_dAla" to "praBAviwa_kara" 
;These cuts in services will particularly affect the old.
(defrule affect2
(declare (salience 4800))
(id-root ?id affect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAviwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  affect.clp 	affect2   "  ?id "  praBAva_dAla )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  affect.clp      affect2   "  ?id " ko )" crlf)
)
)

;"affect","V","1.praBAva_dAlanA"
;The huge amount of polluting compounds produced will adversely affect humans && the environment.
;--"2.bahAnA_karanA"
;The convict affected an air of innocence even after he was senteneed.
;
;
