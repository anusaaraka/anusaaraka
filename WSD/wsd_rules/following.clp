;Added by Pramila(Banasthali University)
;You can perform following activity at your home.
(defrule following0
(declare (salience 5000))
(id-root ?id following)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 activity|text|image)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nimnaliKiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  following.clp 	following0   "  ?id "  nimnliKiwa )" crlf))
)

;Added by Pramila(Banasthali University)
;It is performed in the following event.
(defrule following1
(declare (salience 5000))
(id-root ?id following)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 event|incident)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id agalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  following.clp 	following1   "  ?id "  agalA )" crlf))
)

;Added by Pramila(Banasthali University)
;The following is an extract from her diary.
(defrule following2
(declare (salience 4800))
(id-root ?id following)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id agalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  following.clp 	following2   "  ?id "  agalA )" crlf))
)

;Added by Pramila(Banasthali University)
;The shop has a small but loyal following.
(defrule following3
(declare (salience 4800))
(id-root ?id following)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id loga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  following.clp 	following3   "  ?id "  loga )" crlf))
)

;----------------------------------------- Default Rules ----------------------------------
;Added by Pramila(Banasthali University)
(defrule following4
(declare (salience 3000))
(id-root ?id following)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id loga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*prov_dir* "  following.clp 	following4   "  ?id "  loga )" crlf))
)

(defrule following5
(declare (salience 3000))
(id-root ?id following)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id agalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  following.clp 	following5   "  ?id "  agalA )" crlf))
)

(defrule following6
(declare (salience 3000))
(id-root ?id following)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hone_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  following.clp 	following6   "  ?id "  hone_para )" crlf))
)

;Added by Pramila(Banasthali University)
(defrule following7
(declare (salience 3000))
(id-root ?id following)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nimnaliKiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*prov_dir* "  following.clp 	following7   "  ?id "  nimnliKitwa )" crlf))
)


;"following","Prep","1.hone_para"
;There was a major uprising following his arrest.
;
;
