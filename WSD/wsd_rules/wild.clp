
(defrule wild0
(declare (salience 100))
(id-root ?id wild)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaMgalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wild.clp 	wild0   "  ?id "  jaMgalI )" crlf))
)

;"wild","Adj","1.jaMgalI"
;These flowers are wild.
;
(defrule wild1
(declare (salience 4900))
(id-root ?id wild)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaMgala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wild.clp 	wild1   "  ?id "  jaMgala )" crlf))
)

;"wild","N","1.jaMgala"
;The solitary reaper walked in the wild.
;

;@@@ Added by Pramila(BU) on 15-03-2014
;She is wild about dancing.   ;shiksharthi
;वह नृत्य की दीवानी है.
(defrule wild2
(declare (salience 5000))
(id-root ?id wild)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective)
(viSeRya-about_saMbanXI  ?id ?id1)
(id-word =(+ ?id 1) about)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) xIvAnA))
(assert  (id-wsd_viBakwi   ?id1  kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wild.clp 	wild2  "  ?id "  "  (+ ?id 1)  "  xIvAnA  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_viBakwi   " ?*wsd_dir* " wild.clp 	wild2  "  ?id1 "  kA )" crlf)
)
)

;@@@ Added by Pramila(BU) on 15-03-2014
;She was wild with anxiety.    ;shiksharthi
;वह चिंता से विक्षिप्त थी.
(defrule wild3
(declare (salience 5000))
(id-root ?id wild)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective)
(viSeRya-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikRipwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wild.clp 	wild3   "  ?id "  vikRipwa )" crlf))
)
