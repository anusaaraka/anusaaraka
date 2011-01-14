
(defrule kill0
(declare (salience 5000))
(id-root ?id kill)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id killing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id narasaMhAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  kill.clp  	kill0   "  ?id "  narasaMhAra )" crlf))
)

;given_word=killing && word_category=noun	$hawyA)

;"killing","N","1.hawyA"
;This man has done many killings in the city.
;--"2.sahasA_hone_vAlA_lABa
;He has made a killing in his business.
;
(defrule kill1
(declare (salience 4900))
(id-root ?id kill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAranA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kill.clp 	kill1   "  ?id "  mAranA )" crlf))
)

(defrule kill2
(declare (salience 4800))
(id-root ?id kill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAra))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kill.clp 	kill2   "  ?id "  mAra )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  kill.clp      kill2   "  ?id " ko )" crlf)
)
)

;"kill","V","1.mAranA"
;He kills not for necessity but for the joy of it.
;
;

 ;Added by sheetal(19-02-10)
(defrule kill3
(declare (salience 4950))
(id-root ?id kill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object ?id1 ?id)
(id-root ?id1 seize)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kill.clp      kill3   "  ?id "  SikAra )" crlf))
)
;The leopard seizes its kill and begins to eat .
 

