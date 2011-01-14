
(defrule what0
(declare (salience 5000))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp 	what0   "  ?id "  kyA )" crlf))
)

(defrule what1
(declare (salience 4900))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) a )
(id-cat_coarse =(+ ?id 2) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp 	what1   "  ?id "  kiwanA )" crlf))
)

;What a beautiful scene!
(defrule what2
(declare (salience 4800))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp 	what2   "  ?id "  kyA )" crlf))
)

; I did not know what to do.
(defrule what3
(declare (salience 4700))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) tell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp 	what3   "  ?id "  kyA )" crlf))
)

(defrule what4
(declare (salience 4600))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(id-word 1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp 	what4   "  ?id "  kyA )" crlf))
)

(defrule what5
(declare (salience 4500))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp 	what5   "  ?id "  kyA )" crlf))
)

;"what","Conj","1.kyA"
(defrule what6
(declare (salience 4400))
(id-root ?id what)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  what.clp 	what6   "  ?id "  kyA )" crlf))
)

;"what","Pron","1.kyA"
;What are you reading.
;
