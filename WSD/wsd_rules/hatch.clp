
(defrule hatch0
(declare (salience 5000))
(id-root ?id hatch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vikasiwa_ho))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hatch.clp	hatch0  "  ?id "  " ?id1 "  vikasiwa_ho  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  hatch.clp     hatch0   "  ?id " se )" crlf)
)

(defrule hatch1
(declare (salience 4900))
(id-root ?id hatch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMde_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hatch.clp 	hatch1   "  ?id "  aMde_se )" crlf))
)

;default_sense && category=verb	aMde se	0
;"hatch","V","1.aMde senA"
;In a corner of the room, the hen was hatching the eggs.
;
;

;@@@ Added by Prachi Rathore[28-1-14]
;Have you been hatching up a deal with her?[oald]
;क्या आप उसके साथ डील बना रहे हैं? 
(defrule hatch2
(declare (salience 5000))
(id-root ?id hatch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hatch.clp 	hatch2   "  ?id "  " ?id1 "  banA  )" crlf))
)

;@@@ Added by Prachi Rathore[28-1-14]
;There is a hatch in the room to pass things to the other.[shiksharthi-kosh]
; एक कमरे से दूसरे कमरे में च़ीज़ें बढाने के लिए एक खिडकी है.
(defrule hatch3
(declare (salience 4900))
(id-root ?id hatch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KidakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hatch.clp 	hatch3   "  ?id "  KidakI )" crlf))
)


;@@@ Added by Prachi Rathore[28-1-14]
;He hatched a plot to kill his wife. [m-w]
;उसने उसकी पत्नी को मारने के लिए षङयंत्र बनाया . 
(defrule hatch4
(declare (salience 5000))
(id-root ?id hatch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 plot)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hatch.clp 	hatch4   "  ?id "  banA )" crlf))
)


;@@@ Added by Prachi Rathore[29-1-14]
;The eggs are about to hatch.[oald]
;अण्डे फुटने ही वाले  हैं . 
(defrule hatch5
(declare (salience 5000))
(id-root ?id hatch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 egg)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Puta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hatch.clp 	hatch5   "  ?id "  Puta )" crlf))
)
