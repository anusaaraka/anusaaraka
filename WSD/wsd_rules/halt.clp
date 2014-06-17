
(defrule halt0
(declare (salience 5000))
(id-root ?id halt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id halting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id hicakicAwA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  halt.clp  	halt0   "  ?id "  hicakicAwA_huA )" crlf))
)

;"halting","Adj","1.hicakicAwA huA"
;sumiwa"halting"svara meM bolawA hE.
;
(defrule halt1
(declare (salience 4900))
(id-root ?id halt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rukanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  halt.clp 	halt1   "  ?id "  rukanA )" crlf))
)

;"halt","N","1.rukanA"
;Troops are ordered to halt during a march .
;mArca ke xOrAna xaloM ko rukane kA AxeSa xiyA jAwA hE .
;
(defrule halt2
(declare (salience 4800))
(id-root ?id halt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMxa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  halt.clp 	halt2   "  ?id "  baMxa_kara_xe )" crlf))
)

;"halt","V","1.baMxa_kara_xenA"
;The production was forced to halt ,due to a strike in the factory .
;kAraKAne meM hadZawAla ke kAraNa uwpAxana baMxa kara xenA padZA.
;

;@@@ Added by Prachi Rathore 2-1-14
;The King [halted] and looked around.[gyan-nidhi]
; राजा रुक गया और हर ओर देखा . 
(defrule halt3
(declare (salience 5000))
(id-root ?id halt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ruka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  halt.clp 	halt3   "  ?id "  ruka_jA )" crlf))
)

;@@@ Added by Prachi Rathore 2-1-14
;the recent halt in production.[cambridge]
;उत्पादन में हाल की रुकावट . 
;The thought brought her to an abrupt halt.
;
(defrule halt4
(declare (salience 5000))
(id-root ?id halt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-in_saMbanXI  ?id ?)(viSeRya-viSeRaNa  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rukAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  halt.clp 	halt4   "  ?id "  rukAvata )" crlf))
)
