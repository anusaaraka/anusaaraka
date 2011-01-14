
(defrule misplace0
(declare (salience 5000))
(id-root ?id misplace)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id misplaced )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id KoI_huI_cIja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  misplace.clp  	misplace0   "  ?id "  KoI_huI_cIja )" crlf))
)

;"misplaced","Adj","1.KoI huI cIja"
;He found the misplaced car keys.
;
(defrule misplace1
(declare (salience 4900))
(id-root ?id misplace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawa_jagaha_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  misplace.clp 	misplace1   "  ?id "  galawa_jagaha_raKa )" crlf))
)

;"misplace","V","1.galawa jagaha raKanA"
;Don't misplace any important document.
;
;