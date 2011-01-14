
(defrule spoke0
(declare (salience 5000))
(id-root ?id spoke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spoke.clp 	spoke0   "  ?id "  wIlI )" crlf))
)

;"spoke","N","1.wIlI{sAikila_iwyAxi_kI}"
;The ball hit so hard that almost all spokes are broken.
;
(defrule spoke1
(declare (salience 4900))
(id-root ?id spoke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bolA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spoke.clp 	spoke1   "  ?id "  bolA )" crlf))
)

;"spoke","V","1.bolA"
;The words you spoke are not liked by anyone.
;
