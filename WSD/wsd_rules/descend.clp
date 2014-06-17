
(defrule descend0
(declare (salience 5000))
(id-root ?id descend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " descend.clp	descend0  "  ?id "  " ?id1 "  AkramaNa_kara  )" crlf))
)

;A crowd of press(photographers)descended on the hotel.
;presa kI BIdZa hotala para tUta padZI
(defrule descend1
(declare (salience 4900))
(id-root ?id descend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upon_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAnaka_A));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " descend.clp descend1 " ?id "  acAnaka_A )" crlf)) 
)

(defrule descend2
(declare (salience 4800))
(id-root ?id descend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " descend.clp	descend2  "  ?id "  " ?id1 "  acAnaka_A  )" crlf))
)

(defrule descend3
(declare (salience 4000))
(id-root ?id descend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  descend.clp 	descend3   "  ?id "  uwara )" crlf))
)

;@@@ Added by Pramila(BU)on 12-12-2013
;Later, as night descended, the children sat on the first floor verandah.
;बाद में , जैसे ही रात  ढली , बच्चे पहली मंजिल के बरामदे में बैठ गए।
(defrule descend4
(declare (salience 5000))
(id-root ?id descend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id2)
(kriyA-vAkya_viBakwi  ?id ?id1)
(id-word ?id1 as)
(id-root ?id2 day|night|evening|noon)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  descend.clp 	descend4   "  ?id "  Dala )" crlf))
)

;default_sense && category=verb	uwara	0
;"descend","VT","1.uwaranA"
;They descended from the stairs rather quietly.
;
;

;@@@ Added by Pramila(Banasthali University) on 07-01-2014
;He descended to abusing          ;shiksharthi
;वह गालियाँ देने पर उतर आया.
(defrule descend5
(declare (salience 5000))
(id-root ?id descend)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kriyArWa_kriyA  ?id ?id2)(kriyA-to_saMbanXI  ?id ?id2))
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwara_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  descend.clp 	descend5   "  ?id "  uwara_A )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 07-01-2014
;He is descended from a noble family.            ;shiksharthi
;वह एक कुलीन परिवार में उत्पन्न हुआ है.
(defrule descend6
(declare (salience 5000))
(id-root ?id descend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
(id-root ?id1 family)
;(kriyA-subject  ?id ?id2)
;(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpanna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  descend.clp 	descend6   "  ?id "  uwpanna_ho )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 07-01-2014
;The property descended from father to son.            ;shiksharthi
;सम्पत्ति पिता से पुत्र को उत्तराधिकार में प्राप्त हुई है.
(defrule descend7
(declare (salience 5000))
(id-root ?id descend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
(kriyA-to_saMbanXI  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwarAXikAra_meM_prApwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  descend.clp 	descend7   "  ?id "  uwwarAXikAra_meM_prApwa_ho )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 07-01-2014
;The troops descended on the town.        ;shiksharthi
;सेनाएँ शहर पर टूट पड़ी.
(defrule descend8
(declare (salience 5000))
(id-root ?id descend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tUta_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  descend.clp 	descend8   "  ?id "  tUta_padZa )" crlf))
)

;@@@ Added by Pramila(BU)on 26-01-2014
;A hush descended over the waiting crowd.      ;oald
;प्रतीक्षा करती हुई भीड़ में चुप्पी छा गई.
(defrule descend9
(declare (salience 5000))
(id-root ?id descend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-word ?id1 hush)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  descend.clp 	descend9   "  ?id "  CA_jA )" crlf))
)
