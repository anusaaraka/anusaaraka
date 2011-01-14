
(defrule sop0
(declare (salience 5000))
(id-root ?id sop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sopping )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bahuwa_gIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sop.clp  	sop0   "  ?id "  bahuwa_gIlA )" crlf))
)

;"sopping","Adj","1.bahuwa gIlA"
;We can not wear sopping clothes.
;
(defrule sop1
(declare (salience 4900))
(id-root ?id sop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id riyAyawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sop.clp 	sop1   "  ?id "  riyAyawa )" crlf))
)

;"sop","N","1.riyAyawa{manAne_ke_liye}"
;--"2.riyAyawa/GUsa"
;The Company offered them sops for A sop in any form makes your work easier.
;
