
(defrule towards0
(declare (salience 5000))
(id-root ?id towards)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samIpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  towards.clp 	towards0   "  ?id "  samIpa )" crlf))
)

;"toward","Adv","1.samIpa/uxyawa/lage/banawA_huA"
(defrule towards1
(declare (salience 4900))
(id-root ?id towards)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  towards.clp 	towards1   "  ?id "  kI_ora )" crlf))
)

(defrule towards2
(declare (salience 4800))
(id-root ?id towards)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  towards.clp 	towards2   "  ?id "  kI_ora )" crlf))
)

;"toward","Prep","1.kI_ora"
;We walked towards the park.
;--"2.ke_viRaya_meM"
;The concert was held towards the spirit of unity.
;--"3.ke_lie"
;We collected money towards orphanage.
;--"4.ke_nikata"
;Computer will dominate towards the end of the century.
;
