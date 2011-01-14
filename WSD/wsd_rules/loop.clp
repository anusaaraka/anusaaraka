
(defrule loop0
(declare (salience 5000))
(id-root ?id loop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumAvaxAra_vakwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  loop.clp 	loop0   "  ?id "  GumAvaxAra_vakwa )" crlf))
)

;"loop","N","1.GumAvaxAra_vakwa"
;The plane flew in a loop.
;--"2.PanxA"
;A loop to hang someone.
;--"3.paripaWa"
;Loop of electric current.
;
(defrule loop1
(declare (salience 4900))
(id-root ?id loop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PanxA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  loop.clp 	loop1   "  ?id "  PanxA_banA )" crlf))
)

;"loop","V","1.PanxA_banAnA"
;Electric wire has been looped around the branches of the tree to hang bulbs.
;--"2.PanxA_dAlakara_bAzXanA"
;Loop the rope firmly round the log.
;
