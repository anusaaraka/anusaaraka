
(defrule gall0
(declare (salience 5000))
(id-root ?id gall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asaBya_vyavahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gall.clp 	gall0   "  ?id "  asaBya_vyavahAra )" crlf))
)

;"gall","N","1.asaBya_vyavahAra"
;I cannot tolerate the gall of teenagers.
;--"2.GqNA"
;She has hatred && gall towards him.
;
(defrule gall1
(declare (salience 4900))
(id-root ?id gall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_ko_gussA_xilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gall.clp 	gall1   "  ?id "  kisI_ko_gussA_xilA )" crlf))
)

;"gall","V","1.kisI_ko_gussA_xilAnA"
;The noise of children galled him.
;--"2.kisI_ko_lajjiwa_karanA"
;He felt galled when she paid the bill for him.
;
