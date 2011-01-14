
(defrule wed0
(declare (salience 5000))
(id-root ?id wed)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id wedding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vivAhowsava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wed.clp  	wed0   "  ?id "  vivAhowsava )" crlf))
)

;"wedding","N","1.vivAhowsava"
;We have to attend  a wedding on Sunday.
;
(defrule wed1
(declare (salience 4900))
(id-root ?id wed)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id wedded )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gaTabanXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wed.clp  	wed1   "  ?id "  gaTabanXiwa )" crlf))
)

;"wedded","Adj","1.gaTabanXiwa"
;She is wedded to the cause of the poor .
;
;
(defrule wed2
(declare (salience 4800))
(id-root ?id wed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id byAha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wed.clp 	wed2   "  ?id "  byAha_kara )" crlf))
)

;"wed","VTI","1.byAha_karanA"
;Tom weddded Mary.
;
;
