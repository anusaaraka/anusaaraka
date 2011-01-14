;Added  by Meena(20.3.10)
;The man whom I play tennis with is here .(The man with whom I play tennis is here .) 
(defrule whom0
(declare (salience 5000))
(id-root ?id whom)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI ?id1 ?id )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo));Modified the meaning 'jisa' to 'jo' S.Mahalaxmi (20-04-10)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whom.clp      whom0   "  ?id "  jo )" crlf))
)





;Added by Meena(27.3.10)
;To whom were you speaking ? 
(defrule whom1
(declare (salience 5000))
(id-root ?id whom)
?mng <-(meaning_to_be_decided ?id)
(wh_question)
(kriyA-to_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whom.clp      whom1   "  ?id "  kisa )" crlf))
)




;Salience reduced by Meena(20.3.10)
(defrule whom2
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id whom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jisa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whom.clp 	whom2   "  ?id "  jisa )" crlf))
)




(defrule whom3
(declare (salience 4900))
(id-root ?id whom)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) tell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whom.clp 	whom3   "  ?id "  kOna- )" crlf))
)



(defrule whom4
(declare (salience 4800))
(id-root ?id whom)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whom.clp 	whom4   "  ?id "  kOna- )" crlf))
)




; I did not know whom to ask
(defrule whom5
(declare (salience 4700))
(id-root ?id whom)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(id-word 1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whom.clp 	whom5   "  ?id "  kOna- )" crlf))
)



(defrule whom6
(declare (salience 4600))
(id-root ?id whom)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whom.clp 	whom6   "  ?id "  kOna- )" crlf))
)



(defrule whom7
(declare (salience 4500))
(id-root ?id whom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kise))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whom.clp 	whom7   "  ?id "  kise )" crlf))
)

;"whom","Pron","1.kise"
;Whom should I call for the party?.
;
