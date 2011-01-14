
(defrule study0
(declare (salience 5000))
(id-root ?id study)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id studied )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXyayana_kara))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  study.clp 	study0   "  ?id "  aXyayana_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng    " ?*wsd_dir* "  study.clp     study0   "  ?id " yA )" crlf))
)

(defrule study1
(declare (salience 4900))
(id-root ?id study)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id studied )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id socA-samaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  study.clp  	study1   "  ?id "  socA-samaJA )" crlf))
)

;"studied","Adj","1.socA-samaJA"
;He replied with studied indifference.
;--"2.jAnabUJakara kiyA huA"
;He observed the studied slowness of his movements.
;
;
(defrule study2
(declare (salience 4800))
(id-root ?id study)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXyayana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  study.clp 	study2   "  ?id "  aXyayana )" crlf))
)

;"study","N","1.aXyayana"
;A study of grammar is important for everyone.
;
(defrule study3
(declare (salience 4700))
(id-root ?id study)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXyayana_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  study.clp 	study3   "  ?id "  aXyayana_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  study.clp     study3   "  ?id " kA )" crlf)
)
)

;"study","V","1.aXyayana_karanA"
;I study in class Xth.
;
