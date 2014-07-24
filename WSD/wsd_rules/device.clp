
(defrule device0
(declare (salience 4900))
(id-root ?id device)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 mechanical)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upakaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  device.clp 	device0   "  ?id "  upakaraNa )" crlf))
)

(defrule device1
(declare (salience 4000))
(id-root ?id device)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upakaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  device.clp 	device1   "  ?id "  upakaraNa )" crlf))
)

;default_sense && category=noun	upakaraNa	0
;"device","N","1.upakaraNa"
;India has developed its own nuclear device.
;--"2.leKana_SElI"
;The poet e e cummings has a distinct stylistic device of poetry.
;
;

;@@@ Added by Pramila(BU) on 30-12-2013
;This device enables deaf people to communicate by typing messages instead of speaking.     ;oald
;यह उपकरण बहरे लोगों को संदेशों को बोलने के बजाय टाईप करके संवाद करने में सक्षम बनाता है.
(defrule device2
(declare (salience 5000))
(id-root ?id device)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 enable)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upakaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  device.clp 	device2   "  ?id "  upakaraNa )" crlf))
)

;@@@ Added by Pramila(BU) on 30-12-2013
;A powerful device exploded outside the station.         ;oald
;एक शक्तिशाली बम स्टेशन के बाहर विस्फोटित हुआ.
;an explosive/incendiary/nuclear device          ;cald
;एक विस्फोटक / आग लगानेवाला / परमाणु बम
(defrule device3
(declare (salience 5000))
(id-root ?id device)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 explode)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  device.clp 	device3   "  ?id "  bama )" crlf))
)

;@@@ Added by Pramila(BU) on 30-12-2013
;The report was a device used to hide rather than reveal problems.          ;oald
;रिपोर्ट समस्याओं को छिपाने के बजाय प्रकट करने की योजना थी.
(defrule device4
(declare (salience 4900))
(id-root ?id device)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-kqxanwa_viSeRaNa  ?id ?id1)
(subject-subject_samAnAXikaraNa  ?id2 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yojanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  device.clp 	device4   "  ?id "  yojanA )" crlf))
)

;@@@ Added by Pramila(BU) on 30-12-2013
;Sending advertising by email is very successful as a marketing device.       ;oald
;ईमेल द्वारा विज्ञापन भेजना एक विपणन विधि के रूप में बहुत सफल रहा है.
(defrule device5
(declare (salience 4900))
(id-root ?id device)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-as_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  device.clp 	device5   "  ?id " viXi )" crlf))
)

;@@@ Added by Pramila(BU) on 30-12-2013
;an explosive/incendiary/nuclear device          ;cald
;एक विस्फोटक / आग लगानेवाला / परमाणु बम
(defrule device6
(declare (salience 5000))
(id-root ?id device)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 atomic|explosive|incendiary|nuclear)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  device.clp 	device6   "  ?id "  bama )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_device6
(declare (salience 5000))
(id-root ?id device)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 atomic|explosive|incendiary|nuclear)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " device.clp   sub_samA_device6   "   ?id " bama )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_device6
(declare (salience 5000))
(id-root ?id device)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 atomic|explosive|incendiary|nuclear)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " device.clp   obj_samA_device6   "   ?id " bama )" crlf))
)
