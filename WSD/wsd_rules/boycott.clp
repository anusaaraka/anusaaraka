
(defrule boycott0
(declare (salience 5000))
(id-root ?id boycott)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id proper_noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id boYyakoYta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boycott.clp 	boycott0   "  ?id "  boYyakoYta )" crlf))
)

(defrule boycott1
(declare (salience 4900))
(id-root ?id boycott)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahiRkAra_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boycott.clp 	boycott1   "  ?id "  bahiRkAra_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  boycott.clp   boycott1   "  ?id " kA )" crlf)
)
)

;"boycott","VT","1.bahiRkAra_karanA"
;The opposition boycotted the meeting.
;
;
