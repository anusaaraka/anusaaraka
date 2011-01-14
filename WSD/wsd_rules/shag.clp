
(defrule shag0
(declare (salience 5000))
(id-root ?id shag)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id shagged )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id WakA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  shag.clp  	shag0   "  ?id "  WakA_huA )" crlf))
)

;"shagged","Adj","1.WakA huA"
;Shagged boy fell asleep without removing his shoes.
;
(defrule shag1
(declare (salience 4900))
(id-root ?id shag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAtA_huA_wambAkU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shag.clp 	shag1   "  ?id "  kAtA_huA_wambAkU )" crlf))
)

;"shag","N","1.kAtA huA wambAkU"
;Shag is filled in cigerette.
;
;