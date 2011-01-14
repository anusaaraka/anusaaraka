
(defrule welcome0
(declare (salience 5000))
(id-root ?id welcome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAgawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  welcome.clp 	welcome0   "  ?id "  svAgawa )" crlf))
)

;"welcome","Adj","1.svAgawa"
;The chief guest gave a welcome address.
;You are welcome to use my lab.
;
(defrule welcome1
(declare (salience 4900))
(id-root ?id welcome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAgawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  welcome.clp 	welcome1   "  ?id "  svAgawa )" crlf))
)

;"welcome","N","1.svAgawa"
;We were touched by the warmth of their welcome.
;
(defrule welcome2
(declare (salience 4800))
(id-root ?id welcome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAgawa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  welcome.clp 	welcome2   "  ?id "  svAgawa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  welcome.clp   welcome2   "  ?id " kA )" crlf)
)
)

;"welcome","VT","1.svAgawa_karanA"
;The Principal welcomed the gathering.
;--"2.XanyavAxa_sahiwa_lenA_[kisI_vaswu_ko]"
;Gifts are always welcomed by children.
;--"3.viSeRa_rUpa_se_praBAviwa_honA"
;The manager welcomed the suggestion warmly. .
;
