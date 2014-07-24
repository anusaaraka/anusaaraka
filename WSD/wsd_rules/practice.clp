

;Added by Meena(24.4.10)
;He gave up his lucrative law practice for the sake of the country .
(defrule law_practice1
(declare (salience 4900))
(id-root ?id practice)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 law)
(or (samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1) (viSeRya-viSeRaNa ?id ?id1));modified for OL by Sukhada(6-9-10)

=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vakAlawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " practice.clp  law_practice1  "  ?id "  " ?id1 "  vakAlawa  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;A review of pay and working practices. [OALD]
;वेतन और सञ्चालन चलन का पुनरवलोकन . 
(defrule practice2
(declare (salience 4800))
(id-root ?id practice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-into_saMbanXI  ? ?id)(viSeRya-of_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  practice.clp 	practice2   "  ?id "  calana )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;We need a bit more practice before the concert. [Cambridge]
;हमें सङ्गीत गोष्ठी से पहले - थोडा सा अधिक अभ्यास की आवश्यकता है . 
(defrule practice3
(declare (salience 4700))
(id-root ?id practice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(and(viSeRya-viSeRaNa  ?id ?)(kriyA-object  ? ?id))(and(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?)(kriyA-object_1  ? ?id))(and(viSeRya-viSeRaNa  ?id ?)(viSeRya-det_viSeRaNa  ?id ?)(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?)(kriyA-kAlavAcI  ? ?id)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aByAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  practice.clp 	practice3   "  ?id "  aByAsa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Guidelines for good practice.[OALD]
;अच्छी कार्यप्रणाली के लिये दिशा निर्देश.
(defrule practice4
(declare (salience 4600))
(id-root ?id practice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word ?id1 guidelines|guideline)
(and(viSeRya-viSeRaNa  ?id ?)(viSeRya-for_saMbanXI  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryapraNAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  practice.clp 	practice4   "  ?id "  kAryapraNAlI )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
(defrule practice5
(declare (salience 4500))
(id-root ?id practice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(and(viSeRya-viSeRaNa  ?id ?)(viSeRya-det_viSeRaNa  ?id ?)(viSeRya-of_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paramparA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  practice.clp 	practice5   "  ?id "  paramparA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;The German practice of giving workers a say in how their company is run. [OALD]
(defrule practice6
(declare (salience 4400))
(id-root ?id practice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse ?id1 pronoun)
(and(saMjFA-to_kqxanwa  ?id ?)(viSeRya-RaRTI_viSeRaNa  ?id ?id1)(subject-subject_samAnAXikaraNa  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Axawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  practice.clp 	practice6   "  ?id "  Axawa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;The practice of medicine. [OALD]
;चिकित्सकीय पेशा.
(defrule practice7
(declare (salience 4300))
(id-root ?id practice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(and(viSeRya-det_viSeRaNa  ?id ?)(viSeRya-of_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id cikiwsakIya_peSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  practice.clp 	practice7   "  ?id "  cikiwsakIya_peSA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
(defrule practice8
(declare (salience 4200))
(id-root ?id practice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse ?id1 noun)
(id-word ?id1 solicitor|barrister|docter|lawyer|veterinary)
(and(kriyA-subject  ?id2 ?id1)(kriyA-in_saMbanXI  ?id2 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peSe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  practice.clp 	practice8   "  ?id "  peSe )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
; Have you been practicing your lines for the play? [MW]
;क्या आप खेल के लिए आपकी लाइनों का अभ्यास कर रहे हैं? 
(defrule practice9
(declare (salience 4100))
(id-word ?id practicing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(and(kriyA-object  ?id ?)(kriyA-subject  ?id ?)(kriyA-for_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aByAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  practice.clp 	practice9   "  ?id "  aByAsa_kara )" crlf))
)
