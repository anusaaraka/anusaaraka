
(defrule heroic0
(declare (salience 5000))
(id-root ?id heroic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vIrawApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heroic.clp 	heroic0   "  ?id "  vIrawApUrNa )" crlf))
)

;"heroic","Adj","1.vIrawApUrNa"
;hamArI senA ne GusapETioM ko mAra kara'heroic' kArya kiyA hE.
;
(defrule heroic1
(declare (salience 4900))
(id-root ?id heroic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ojapUrNa_BARA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heroic.clp 	heroic1   "  ?id "  ojapUrNa_BARA )" crlf))
)

;"heroic","N","1.ojapUrNa_BARA"
;suBARacaMxra bosa ne siMgApura meM'heroics'BARaNa xiyA WA.
;
