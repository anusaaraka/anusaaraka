
(defrule network0
(declare (salience 5000))
(id-root ?id network)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id networking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nEtavarkiMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  network.clp  	network0   "  ?id "  nEtavarkiMga )" crlf))
)

;"networking","N","1.nEtavarkiMga{kampyUtarsa_kI}"
;The Company is working on networking software.
;--"2.jAla_biCAnA{mela_jola_kA}"
;They have evolved a system whereby they aim to increase their sales through networking.
;
(defrule network1
(declare (salience 4900))
(id-root ?id network)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  network.clp 	network1   "  ?id "  jAla )" crlf))
)

;default_sense && category=noun	jAla{mArgoM_kA}	0
;"network","N","1.jAla{mArgoM_kA}"
;I need the plans of underground cable network.
;Set up an efficient communication network.
;
;