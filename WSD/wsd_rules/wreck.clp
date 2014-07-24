
;$$$ Modified by Pramila(BU) on 24-03-2014 [meaning changed from 'naRta_honA' to 'powaBaMga']
(defrule wreck0
(declare (salience 100))
(id-root ?id wreck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id powaBaMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wreck.clp 	wreck0   "  ?id "  powaBaMga )" crlf))
)

;@@@ Added by Pramila(BU) on 24-03-2014
;He was a total wreck when his business failed.   [old clp]
;वह पूरी तरह से कमजोर हो गया था जब उसका व्यापार असफल हुआ.
(defrule wreck1  
(declare (salience 5000))
(id-root ?id wreck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamajora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wreck.clp 	wreck1   "  ?id "  kamajora )" crlf))
)


;@@@ Added by Pramila(BU) on 24-03-2014
;The interview reduced him to a nervous wreck.   ;oald
;साक्षात्कार ने उसको एक मानसिक रूप से कमजोर कर दिया. 
(defrule wreck2
(declare (salience 5000))
(id-root ?id wreck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-to_saMbanXI  ?kri ?id)
(kriyA-object  ?kri ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamajora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wreck.clp 	wreck2   "  ?id "  kamajora )" crlf))
)

;@@@ Added by Pramila(BU) on 24-03-2014
;The building had been wrecked by the explosion.   ;oald
;इमारतें विसफोट से ढह गई थी. 
(defrule wreck3
(declare (salience 5000))
(id-root ?id wreck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 building|house)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Daha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wreck.clp 	wreck3   "  ?id "  Daha )" crlf))
)

;@@@ Added by Pramila(BU) on 24-03-2014
;The house was a wreck when we bought it.   ;oald
;घर एक मलबा था जब हमने इसे खरीदा था. 
;They still hoped to salvage something from the wreck of their marriage.   ;oald
;उन्हें अभी भी अपनी शादी के मलबे से कुछ निकालने की आशा थी.
(defrule wreck4
(declare (salience 4500))
(id-root ?id wreck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(subject-subject_samAnAXikaraNa  ?id1 ?id)(viSeRya-of_saMbanXI  ?id ?id1))
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id malabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wreck.clp 	wreck4   "  ?id "  malabA )" crlf))
)


;@@@ Added by Pramila(BU) on 24-03-2014
;The weather wrecked all our plans.  ;oald
;मौसम ने हमारे सारी योजनाएँ बर्बाद कर दी.
;A serious injury nearly wrecked his career.   ;oald
;एक गम्भीर चोट ने करीब करीब उसका कैरियर बर्बाद कर दिया . 
(defrule wreck5
(declare (salience 5000))
(id-root ?id wreck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 plan|career|hope)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barbAxa_kara_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wreck.clp 	wreck5   "  ?id "  barbAxa_kara_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  wreck.clp 	wreck5     "  ?id " ne )" crlf))
)

;@@@ Added by Pramila(BU) on 24-03-2014
;The ship was wrecked off the coast of France  ;oald
;जहाज फ्रांस के तट पर नष्ट हो गया.
(defrule wreck6
(declare (salience 5000))
(id-root ?id wreck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off) 
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 naRta_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wreck.clp 	wreck6 "  ?id "  "  ?id1  "  naRta_ho  )" crlf))
)


;"wreck","N","1.naRta_honA{jalapowa_vAyuyAna_Axi}"
;The Titanic was in wreck when it hit the iceberg.
;--"2.rogI_vyakwi"
;He was a total wreck when his business failed.
;
(defrule wreck7
(declare (salience 100))
(id-root ?id wreck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nASa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wreck.clp 	wreck7   "  ?id "  nASa_kara )" crlf))
)

;"wreck","VTI","1.nASa_karanA"
;The enemies wrecked the plane.
;
