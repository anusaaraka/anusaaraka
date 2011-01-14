;wasted-as adjective
;We had a wasted journey .
;He was not in when I got there, so it was a completely wasted journey.
(defrule waste1
(declare (salience 65))
(id-root ?id waste)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id wasted)
;(id-word =(- ?id 1) a|the)
;(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa =(+ ?id 1) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirarWaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waste.clp      waste1   "  ?id "  nirarWaka )" crlf))
)


;Waste-as adjective
;Waste matter is recycled
;They pumped the waste water in the river.
(defrule waste2
(declare (salience 60))
(id-root ?id waste)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id adjective)
(id-word =(+ ?id 1) ?)
(id-cat_coarse  =(+ ?id 1) noun)
;(viSeRya-viSeRaNa =(+ ?id 1) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyarWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waste.clp 	waste2   "  ?id "  vyarWa )" crlf))
)


;waste -as noun
;It is not worth doing this work,it is a waste of energy.
;Deforestation is a mindless waste of natural resources.
(defrule waste3
(declare (salience 60))
(id-root ?id waste)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word ?id1 time|money|energy|efforts|resources|talents|space|paper)
(test (> ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barabAxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waste.clp 	waste3   "  ?id "  barabAxI )" crlf))
)


;waste-as noun
;We can recycle the household waste.
;We should keep away from the nuclear waste.
(defrule waste4
(declare (salience 55))
(id-root ?id waste)
?mng <-(meaning_to_be_decided ?id)
(or (samAsa  =(- ?id 1) ?id)(viSeRya-viSeRaNa ?id =(- ?id 1)))
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
;(assert (id-wsd_root_mng ?id kRaya))
(assert (id-wsd_root_mng ?id avaSeRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waste.clp      waste4   "  ?id "  avaSeRa )" crlf))
)


;waste-as verb
;In rule waste5, to get the correct sense, the HM from naRta_karanA to vyarWa_meM_barabAxa_karanA (Meena).
;Do not waste time.
;He wasted his golden opportunity to play in the national team.
(defrule waste5
(declare (salience 62))
(id-root ?id waste)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyarWa_meM_barabAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waste.clp 	waste5   "  ?id "  vyarWa_meM_barabAxa_kara )" crlf))
)

