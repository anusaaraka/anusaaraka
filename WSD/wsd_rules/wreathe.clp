
;$$$ Modified by Pramila(BU) on 22-03-2014  [condition '(kriyA-with_saMbanXI  ?id  ?id1)' added]
;Added by MeenA(3.02.10)
;The sky is wreathed with clouds.
(defrule wreathe0
(declare (salience 4500))
(id-root ?id wreathe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
;(id-word =(+ ?id 1) with)
(kriyA-with_saMbanXI  ?id  ?id1)
(kriyA-subject ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wreathe.clp    wreathe0   "  ?id "  Gira )" crlf))
)

;@@@ Added by Pramila(BU) on 22-03-2014
;She wreathed a garland.   ;shiksharthi
;उसने एक माला गूँथी.
(defrule wreathe1
(declare (salience 100))
(id-root ?id wreathe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gUzWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wreathe.clp    wreathe1   "  ?id "  gUzWa )" crlf))
)


;@@@ Added by Pramila(BU) on 22-03-2014
;The smoke wreathed.   ;shiksharthi
;धुआँ छल्ला बनाते हुए ऊपर उठा.
(defrule wreathe2
(declare (salience 5000))
(id-root ?id wreathe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 smoke)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CallA_banAwe_hue_Upara_uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wreathe.clp    wreathe2   "  ?id "  CallA_banAwe_hue_Upara_uTa )" crlf))
)

;@@@ Added by Pramila(BU) on 22-03-2014
;They wreathed the idol with flowers.   ;shiksharthi
;उन्होंने मूर्ति को फूलों से ढक दिया.
(defrule wreathe3
(declare (salience 5000))
(id-root ?id wreathe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id  ?id1)
(kriyA-object ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Daka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wreathe.clp    wreathe3   "  ?id "  Daka_xe )" crlf))
)

