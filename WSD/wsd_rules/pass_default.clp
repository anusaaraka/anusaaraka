
(defrule pass_default0
(declare (salience 5000))
(id-root ?id pass_default)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 ball)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pass_default.clp 	pass_default0   "  ?id "  PeMka )" crlf))
)

(defrule pass_default1
(declare (salience 4900))
(id-root ?id pass_default)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gujZara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pass_default.clp 	pass_default1   "  ?id "  gujZara )" crlf))
)

;"pass","V","1.gujZaranA"
;The street was so crowded that the traffic was unable to pass.
;Time has passed so quickly that we are surprised.
;--"2.haswAMwariwa karanA"
;Read && pass on the newspaper.
;--"3.pAra karanA"
;Pass the shop && you will be in front of  the school.
;--"4.uwwarAXikAra meM pAnA"
;I have inherited my nature as it passed from my father to me.
;--"5.uwwIrNa honA"
;I don't know much psychology but I have to pass my exam.
;--"6.maMjZUra honA"
;The bill should be passed in this session only.
;--"7.sahana karanA"
;Her provocative remarks passed without comment.
;
;
