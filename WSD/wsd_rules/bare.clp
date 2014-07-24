;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 05-03-2014
;The bare bones of the story.[oald]
;कहानी के बुनियादी तथ्य
(defrule bare2
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 bones)
(viSeRya-of_saMbanXI  ?id1 ?)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_word_mng ?id ?id1 buniyAxI_waWya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bare.clp 	bare2  "  ?id "  " ?id1 "  buniyAxI_waWya )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 05-03-2014
;He was capable of killing a man with his bare hands.[oald]
;वह अपने हाथों से एक आदमी की हत्या करने में सक्षम था.
;We pulled the wall down with our bare hands.[oald]
;हम अपने हाथों से दीवार को तोड़ दिया.
(defrule bare3
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-with_saMbanXI  ?kri ?id1)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 hands)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_word_mng ?id ?id1 hAWoM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bare.clp 	bare3  "  ?id "  " ?id1 "  hAWoM )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 05-03-2014
;Every aspect of their private lives has been laid bare.[oald]
;उनके नीजी जीवन का हर पहलू सबके सामने खोल कर रख दिया गया है 
(defrule bare4
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(kriyA-subject  ?id2 ?id1)
(id-root ?id2 lay)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kola_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bare.clp 	bare4   "  ?id "  Kola_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 05-03-2014
;The family was short of even the bare necessities of life.[oald]
;पारिवार के पास जीवन की मूलभूत/जरूरी आवश्यकताओं की भी कमी थी.
(defrule bare5
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 necessity)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlaBUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bare.clp 	bare5   "  ?id "  mUlaBUwa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 05-03-2014
;The fridge was completely bare.[oald]
;फ्रिज पूरा खाली था
(defrule bare6
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id))
(id-word ?id1 fridge|shelf|almirah|room|cupboard)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bare.clp 	bare6   "  ?id "  KAlI )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 05-03-2014
;A room bare of furniture.[oald]
;बिना फर्नीचर का एक कमरा.
(defrule bare7
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?)
;(id-cat ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bare.clp 	bare7   "  ?id "  binA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 05-03-2014
;The bare branches of winter trees.[oald]
;जाड़ो के पेड़ो की बिना पत्तियों की शाखायें
(defrule bare8
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 branch|tree)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id binA_pawwiyoM_kI))
;(assert (id-H_vib_mng ?id1 kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  bare.clp 	bare8   "  ?id "  binA_pawwiyoM_kI )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  bare.clp 	bare8   "  ?id1 " kA )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 05-03-2014
;A bare mountainside.[oald]
;वृक्षहीन पहाड़
(defrule bare9
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 mountainside|countryside|landscape|land)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqkRahIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bare.clp 	bare9   "  ?id "  vqakRahIna )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 05-03-2014
;The dog bared its teeth and growled.[oald]
;कुत्ते ने अपने दांत दिखाये और भौंका
(defrule bare10
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 tooth)
(id-cat ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bare.clp 	bare10   "  ?id "  xiKa )" crlf))
)


;************************DEFAULT RULES************************

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 05-03-2014
;changed the meaning from 'anAvqwwa' to 'naMgA'
;She likes to walk around in bare feet.[oald]
;वह चारों ओर नंगे पैर में चलना पसंद करती है
(defrule bare0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id naMgA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bare.clp 	bare0   "  ?id "  naMgA )" crlf))
)

; She kept a pea on the bare bedstead.
; default_sense && category=a pralata	0
(defrule bare1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvaswra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bare.clp 	bare1   "  ?id "  nirvaswra_kara )" crlf))
)

;"bare","V","1.nirvaswra_karanA"
;She bared her veiled face.
;--"2.prakata_karanA"
;He bared the facts of the case before the Jury.
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bare2
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 bones)
(viSeRya-of_saMbanXI  ?id1 ?)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_word_mng ?id ?id1 buniyAxI_waWya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " bare.clp   sub_samA_bare2   "   ?id " " ?id1 " buniyAxI_waWya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bare2
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 bones)
(viSeRya-of_saMbanXI  ?id1 ?)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_word_mng ?id ?id1 buniyAxI_waWya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " bare.clp   obj_samA_bare2   "   ?id " " ?id1 " buniyAxI_waWya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bare3
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(kriyA-with_saMbanXI  ?kri ?id1)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 hands)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_word_mng ?id ?id1 hAWoM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " bare.clp   sub_samA_bare3   "   ?id " " ?id1 " hAWoM )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bare3
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(kriyA-with_saMbanXI  ?kri ?id1)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 hands)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_word_mng ?id ?id1 hAWoM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " bare.clp   obj_samA_bare3   "   ?id " " ?id1 " hAWoM )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bare5
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 necessity)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlaBUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " bare.clp   sub_samA_bare5   "   ?id " mUlaBUwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bare5
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 necessity)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlaBUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " bare.clp   obj_samA_bare5   "   ?id " mUlaBUwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bare8
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 branch|tree)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id binA_pawwiyoM_kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " bare.clp   sub_samA_bare8   "   ?id " binA_pawwiyoM_kI )" crlf)
)
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bare8
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 branch|tree)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id binA_pawwiyoM_kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " bare.clp   obj_samA_bare8   "   ?id " binA_pawwiyoM_kI )" crlf)
)
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bare9
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 mountainside|countryside|landscape|land)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqkRahIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " bare.clp   sub_samA_bare9   "   ?id " vqakRahIna )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bare9
(declare (salience 3000))
(id-root ?id bare)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 mountainside|countryside|landscape|land)
(id-cat ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqkRahIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " bare.clp   obj_samA_bare9   "   ?id " vqakRahIna )" crlf))
)
