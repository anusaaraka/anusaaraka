
(defrule frighten0
(declare (salience 5000))
(id-root ?id frighten)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id frightened)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BayaBIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  frighten.clp  	frighten0   "  ?id "  BayaBIwa )" crlf))
)

;given_word=frightened && word_category=adjective	$BayaBIwa)

;"frightened","Adj","1.BayaBIwa"
;The frightened antelope ran fast.
;
;
(defrule frighten1
(declare (salience 4900))
(id-root ?id frighten)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id darA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frighten.clp 	frighten1   "  ?id "  darA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  frighten.clp  frighten1   "  ?id " ko )" crlf)
)
)

;"frighten","VT","1.darAnA"
;Ravi's anger frightened me.
;The bark of the dog can frighten the child.
;
;
