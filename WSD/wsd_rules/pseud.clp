
(defrule pseud0
(declare (salience 5000))
(id-root ?id pseud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKAvatI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pseud.clp 	pseud0   "  ?id "  xiKAvatI )" crlf))
)

;"pseud","Adj","1.xiKAvatI"
;Be aware of pseud in the society.
;
(defrule pseud1
(declare (salience 4900))
(id-root ?id pseud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKAvatI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pseud.clp 	pseud1   "  ?id "  xiKAvatI )" crlf))
)

;"pseud","N","1.xiKAvatI"
;She's just pseud,. She knows nother about the theatre really..
;--"2.Caxma"
;Ke made a pseud remark about my achievement.
;
