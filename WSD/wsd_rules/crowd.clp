
(defrule crowd0
(declare (salience 5000))
(id-root ?id crowd)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id crowded )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BIdZa_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  crowd.clp  	crowd0   "  ?id "  BIdZa_vAlA )" crlf))
)

(defrule crowd1
(declare (salience 4900))
(id-root ?id crowd)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id crowded )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BIdZa_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  crowd.clp  	crowd1   "  ?id "  BIdZa_vAlA )" crlf))
)

;In case of given word we have to give both the entries, for adj as well as for verb
; It can be a case of noun followed by a noun; crowded underground tran)
(defrule crowd2
(declare (salience 4800))
(id-root ?id crowd)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id crowded )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BIdZa_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  crowd.clp  	crowd2   "  ?id "  BIdZa_vAlA )" crlf))
)

;"crowded","Adj","1.BIdZa_vAlA"
;In summer Shimla is crowded with tourists. 
;
(defrule crowd3
(declare (salience 4700))
(id-root ?id crowd)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crowd.clp 	crowd3   "  ?id "  BIdZa )" crlf))
)

;"crowd","N","1.BIdZa/samUha/relA/Dera"
;A crowd of insects assembled around the flowers
;He still hangs out with the same crowd
;
(defrule crowd4
(declare (salience 4600))
(id-root ?id crowd)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIdZa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crowd.clp 	crowd4   "  ?id "  BIdZa_lagA )" crlf))
)

;"crowd","V","1.BIdZa_lagAnA"
;Now go to your classes,don't crowd here.  
;--"2.xabAva_dAlanA"
;Don't crowd me,I will not appoint her as a lecturer. 
;--"3.TUMsanA/TasATasa_BaranA"
;Tourists crowded the bus.
;
