
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
 
;Added by Prachi Rathore[22-11-13]
;Lack of funding is killing off small theatres.
;धन की कमी छोटे थियेटर को खत्म कर रही है.
(defrule kill4
(declare (salience 4950))
(id-root ?id kill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root =(+ ?id 1) off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) Kawma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " kill.clp  kill4  "  ?id "  " (+ ?id 1) "   Kawma_kara  )" crlf))
)

;Added by Prachi Rathore[22-11-13]
;Lack of romance can kill a marriage.
;रोमांस की कमी शादी को  तोड़ सकती है.

(defrule kill5
(declare (salience 4950))
(id-root ?id kill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 marriage)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id woda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kill.clp      kill5   "  ?id "  woda)" crlf))
)

;Added by Prachi Rathore[22-11-13]
;Kill your speed.
;अपनी रफ्तार को कम करो .
(defrule kill6
(declare (salience 4950))
(id-root ?id kill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 pain|speed)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kill.clp      kill6   "  ?id "  kama_kara)" crlf))
)
;Added by Prachi Rathore[22-11-13]
;Do you agree that television kills conversation? [OALD]
;क्या आप सहमत होते हैं कि दूरदर्शन वार्तालाप को समाप्त करता है? 
(defrule kill7
(declare (salience 4950))
(id-root ?id kill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 chance|rumour|conversation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kill.clp      kill7   "  ?id "  samApwa_kara)" crlf))
)
