
(defrule smite0
(declare (salience 5000))
(id-root ?id smite)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id smitten )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pyAra_meM_dUbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  smite.clp  	smite0   "  ?id "  pyAra_meM_dUbA )" crlf))
)

;"smitten","Adj","1.pyAra_meM_dUbA"
;Earlier they quarelled but now they are completely smitten with each other.
;
(defrule smite1
(declare (salience 4900))
(id-root ?id smite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smite.clp 	smite1   "  ?id "  mAra )" crlf))
)

;"smite","V","1.mAranA/prahAra karanA"
;He smote the ball into the grandstand. 
;
;