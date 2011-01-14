
(defrule human0
(declare (salience 5000))
(id-root ?id human)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnavIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  human.clp 	human0   "  ?id "  mAnavIya )" crlf))
)

;"human","Adj","1.mAnavIya"
;SikRaka CAwroM ko mAnavIya SarIra vijFAna paDA rahe hE.
;
(defrule human1
(declare (salience 4900))
(id-root ?id human)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  human.clp 	human1   "  ?id "  mAnava )" crlf))
)

;"human","N","1.mAnava"
;aparAXI ko xaNda xewe samaya hameM yaha nahIM BUlanA hE ki galawI 'human' se hI howI hE.
;
