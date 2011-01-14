
(defrule flavour0
(declare (salience 5000))
(id-root ?id flavour)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flavouring )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id svAxiRta_banAne_ke_liye_milAyA_gayA_paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flavour.clp  	flavour0   "  ?id "  svAxiRta_banAne_ke_liye_milAyA_gayA_paxArWa )" crlf))
)

;"flavouring","N","1.svAxiRta banAne ke liye milAyA gayA paxArWa"
;Essences are added as flavouring in many sweets.
;
(defrule flavour1
(declare (salience 4900))
(id-root ?id flavour)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flavoured )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAxiRta_yA_sugaMXiwa_kiyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flavour.clp 	flavour1   "  ?id "  svAxiRta_yA_sugaMXiwa_kiyA_huA )" crlf))
)

;"flavoured","Adj","1.svAxiRta yA sugaMXiwa kiyA huA"
;This milk is flavoured with chocolate.
;
;
(defrule flavour2
(declare (salience 4800))
(id-root ?id flavour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flavour.clp 	flavour2   "  ?id "  svAxa )" crlf))
)

;"flavour","N","1.svAxa"
;Food in this dish has a superb flavour.
;--"2.puta"
;This city has a distinct flavour of times gone by.
;
(defrule flavour3
(declare (salience 4700))
(id-root ?id flavour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAxiRta_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flavour.clp 	flavour3   "  ?id "  svAxiRta_banA )" crlf))
)

;default_sense && category=verb	KAsa_svAxa_banA	0
;"flavour","V","1.KAsa_svAxa_banAnA"
;She flavoured the rice-dish with mint.
;
