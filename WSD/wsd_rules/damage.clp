
;Added by Sonam Gupta MTech IT Banasthali 2013
;The damaging effects of pollution.
;प्रदूषण के हानिकारक प्रभाव . 
(defrule damage0
(declare (salience 5000))
(id-root ?id damage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAnikAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  damage.clp 	damage0   "  ?id "  hAnikAraka )" crlf))
)

;Modified by Sonam Gupta MTech IT Banasthali 2013
;removed '(id-cat_coarse ?id verb)' by Pramila(bu) on 17-02-2014
(defrule damage1
(declare (salience 4900))
(id-root ?id damage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAni))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  damage.clp 	damage1   "  ?id "  hAni )" crlf))
)

;"damage","N","1.hAni/GAtA/kRawi"
;There were major damages to his brain after the accident.


;Meaning modified by Meena(26.4.11)
;The arms-dealing affair has severely damaged the reputation of the government. 
;Modified by Meena(5.12.09)
;The explosion damaged his hearing.
(defrule damage2
(declare (salience 4800))
(id-root ?id damage)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bigAdZa))
;(assert (id-wsd_root_mng ?id bigAdZa_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  damage.clp 	damage2   "  ?id "  bigAdZa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  damage.clp      damage2   "  ?id " ko )" crlf)
)
)

;"damage","VI","1.bigadZa_jAnA/naRta_ho_jAnA"
;Some parasites damage good crop.




;Added by Meena(10.5.10)
;The box contained many books , some of which were badly damaged .
(defrule damage3
(declare (salience 4700))
(id-root ?id damage)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  damage.clp    damage3   "  ?id "   KarAba_ho )" crlf))
)






;Salience reduced by Meena(10.5.10)
(defrule damage4
(declare (salience 0))
;(declare (salience 4700))
(id-root ?id damage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAni_pahuzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  damage.clp 	damage4   "  ?id "  hAni_pahuzcA )" crlf))
)

;"damage","VT","1.hAni_pahuzcAnA/bigAdZanA"
;The snow damaged the roof
;

;@@@ Added by Pramila(Banasthali university) on 01-04-2014
;Also, on Tuesday morning a tower was damaged when a tree in the forest near Suigawadi of Dodha fell on it.   ;news-dev corpus
;गौरतलब है कि मंगलवार सुबह डोडा के सुईगवाड़ी के पास जंगल में पेड़ गिरने से टावर क्षतिग्रस्त हुआ था।
(defrule damage5
(declare (salience 5000))
(id-root ?id damage)
?mng <-(meaning_to_be_decided ?id)
(kriyA-samakAlika_kriyA  ?id ?id1)
(kriyA-kriyA_viSeRaNa  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRawigraswa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  damage.clp    damage5   "  ?id "   kRawigraswa_ho )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 01-04-2014
;The front part of the jeep was badly damaged.   ;news-dev corpus
;उसका अगला हिस्सा बुरी तरह क्षतिग्रस्त था.
(defrule damage6
(declare (salience 5000))
(id-word ?id damaged)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaka  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRawigraswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  damage.clp 	damage6   "  ?id "  kRawigraswa )" crlf))
)
