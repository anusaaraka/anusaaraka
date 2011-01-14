;written by Sukhada
;;Example:-We seek your blessings.
(defrule seek1
(declare (salience 5000))
(id-root ?id seek)
?mng <-(meaning_to_be_decided ?id)
(id-word ?tcs1 blessings)
(kriyA-object ?id ?tcs1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAmanA_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seek.clp seek1 " ?id " kAmanA_kara)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  seek.clp seek1 " ?id " kA )" crlf)
)
)
 
;Are you actively seeking jobs?
(defrule seek2
;(declare (salience 0))
(id-root ?id seek)
?mng <-(meaning_to_be_decided ?id)
(id-word ?tcs1 ?noun)
(kriyA-object ?id ?tcs1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walASa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seek.clp seek2 " ?id "  walASa_kara)" crlf));inconsistency in the mng in assert & print statement has been corrected by Sukhada (15.3.10))
)

