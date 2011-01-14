
(defrule plug0
(declare (salience 5000))
(id-root ?id plug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id plaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plug.clp 	plug0   "  ?id "  plaga )" crlf))
)

;"plug","N","1.plaga"
;Fix this plug into the socket.
;--"2.anukUla_pracAra"
;The supporters gave a plug in the form of advertisement to their leader.
;
(defrule plug1
(declare (salience 4900))
(id-root ?id plug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAta_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plug.clp 	plug1   "  ?id "  dAta_lagA )" crlf))
)

;"plug","V","1.dAta_lagAnA"
;I plug the bottle of cold drink after taking some out of it.
;--"2.xoharAI_se_kahanA"
;The media plugged the achievements of the late prime minister.
;--"3.mAranA"
;He'd been plugged full of holes.
;
