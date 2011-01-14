(defrule invite0
(declare (salience 5000))
(id-root ?id invite)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
;(id-word ?id inviting )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AmaMwriwa_kara))
(assert (kriyA_id-object_viBakwi  ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invite.clp    invite0   "  ?id "  AmaMwriwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi  " ?*wsd_dir* "  invite.clp    invite0   "  ?id " ko )" crlf)
)
)
; He made a mistake in inviting John.





;Added by Meena(3.3.10)
;The 5 thousand people invited by Bob attended .
(defrule invite1
(declare (salience 4500))
(id-root ?id invite)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AmaMwriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invite.clp    invite1   "  ?id "  AmaMwriwa )" crlf))
)





;We wish to invite participants from all across the world to participate in this Yagna through this site
