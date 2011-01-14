
(defrule load0
(declare (salience 5000))
(id-root ?id load)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id loaded )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  load.clp  	load0   "  ?id "  BAriwa )" crlf))
)

;"loaded","Adj","1.BAriwa"
;A loaded dice.
;--"2.BarA_huA"
;He carries a loaded gun.
;--"3.nihiwa arWa honA"
;A loaded statement.
;A loaded question.
;
(defrule load1
(declare (salience 4900))
(id-root ?id load)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id boJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  load.clp 	load1   "  ?id "  boJA )" crlf))
)

(defrule load2
(declare (salience 4800))
(id-root ?id load)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  load.clp 	load2   "  ?id "  lAxa )" crlf))
)

;"load","V","1.lAxanA"
;Load the truck.
;--"2.BaranA"
;Load the software.
;
;