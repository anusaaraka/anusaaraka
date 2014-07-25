
(defrule operate0
(declare (salience 4500))
(id-root ?id operate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operate.clp 	operate0   "  ?id "  calA )" crlf))
)

(defrule operate1
(declare (salience 100))
(id-root ?id operate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operate.clp 	operate1   "  ?id "  kAma_kara )" crlf))
)

;"operate","VTI","1.kAma_karanA"
;The new machine is not operating properly.
;--"2.cIra_PAdZa_karanA"
;The doctors decided to operate him immediately.
;
;

;@@@ Added by Pramila(BU) on 03-04-2014
;The doctors decided to operate him immediately.   [old clp]
;डॉक्टरों ने तुरंत उसकी शल्य क्रिया करने का निर्णय लिया.
(defrule operate2
(declare (salience 5000))
(id-root ?id operate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 doctor)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Salya_kriyA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operate.clp 	operate2   "  ?id "  Salya_kriyA_kara )" crlf))
)


;@@@ Added by Pramila(BU) on 03-04-2014
;We will have to operate on his eyes.  ;oald
;हमें उसकी आँखो की शल्य क्रिया करनी होगी..
(defrule operate3
(declare (salience 4900))
(id-root ?id operate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Salya_kriyA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operate.clp 	operate3   "  ?id "  Salya_kriyA_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 03-04-2014
;The airline operates flights to 25 countries. ;oald
;हवाई कम्पनी 25 देशों को विमानों का परिचालन करती है . 
(defrule operate4
(declare (salience 5000))
(id-root ?id operate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(kriyA-to_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paricAlana_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operate.clp 	operate4   "  ?id "  paricAlana_kara_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  operate.clp 	operate4     "  ?id " kA )" crlf))
)


;@@@ Added by Pramila(BU) on 03-04-2014
;Illegal drinking clubs continue to operate in the city.   ;oald
;अवैध शराब क्लब शहर में चल रहे है.
(defrule operate5
(declare (salience 4900))
(id-root ?id operate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
;(kriyA-kriyArWa_kriyA  ?id1 ?id)
;(id-root ?id1 continue)
(kriyA-in_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operate.clp 	operate5   "  ?id "  cala )" crlf))
)

;@@@ Added by Pramila(BU) on 03-04-2014
;Troops are operating from bases in the north.   ;oald
;सैनिको का दल उत्तर में अपने स्थानों से सैनिक कार्यवाही कर रहे हैं.
(defrule operate6
(declare (salience 5000))
(id-root ?id operate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 troop|soldier)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sEnika_kAryavAhI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operate.clp 	operate6   "  ?id "  sEnika_kAryavAhI_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 03-04-2014
;The regulation operates in favour of married couples.   ;oald
;विनियमन विवाहित जोड़ों के पक्ष में लागू होता है.
(defrule operate7
(declare (salience 5000))
(id-root ?id operate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id2)
(id-root ?id2 regulation|law)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAgU_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operate.clp 	operate7   "  ?id "  lAgU_ho )" crlf))
)
