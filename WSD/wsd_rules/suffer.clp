
(defrule suffer0
(declare (salience 5000))
(id-root ?id suffer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id suffering )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vexanA_saha))
(assert (id-H_vib_mng ?id ing))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  suffer.clp  	suffer0   "  ?id "  vexanA_saha )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  suffer.clp     suffer0   "  ?id " ing )" crlf))
)

(defrule suffer1
(declare (salience 4900))
(id-root ?id suffer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id suffering )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vexanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  suffer.clp  	suffer1   "  ?id "  vexanA )" crlf))
)



;Modified by Meena(2.9.11)
;Fonda himself once again suffered the attribution of the word wooden. 
(defrule suffer2
(declare (salience 4800))
(id-root ?id suffer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Jela))
;(assert (id-wsd_root_mng ?id ko_Jela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  suffer.clp 	suffer2   "  ?id "  Jela )" crlf))
)

;default_sense && category=verb	saha	0
;"suffer","V","1.sahanA"
;She is suffering from jaundice.
;
;
