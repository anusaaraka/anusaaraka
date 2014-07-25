;@@@ Added by jagriti(13.3.2014)
;just shove off and leave me alone.[oald]
;अभी निकल जाओ और  मुझे अकेला छोड दो. 
(defrule shove2
(declare (salience 5000))
(id-root ?id shove)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " shove.clp	shove2  "  ?id "  " ?id1 "  nikala_jA  )" crlf))
)
;@@@ Added by jagriti(13.3.2014)
;Jack shoved his hand in his pockets. [wordnet]
;जैक ने जेब में अपना हाथ डाल लिया . 
(defrule shove3
(declare (salience 4900))
(id-root ?id shove)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 hand|book|paper)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shove.clp 	shove3   "  ?id "  dAla_le )" crlf))
)
;....Default Rule...
(defrule shove0
(declare (salience 100))
(id-root ?id shove)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XakkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shove.clp 	shove0   "  ?id "  XakkA )" crlf))
)

;"shove","N","1.XakkA"
;He gave a good shove to his car.
;
(defrule shove1
(declare (salience 100))
(id-root ?id shove)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dakela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shove.clp 	shove1   "  ?id "  Dakela )" crlf))
)

;"shove","V","1.DakelanA"
;Children were shoving each other while they were playing.
;
