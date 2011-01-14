
(defrule relieve0
(declare (salience 5000))
(id-root ?id relieve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id relieved )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cinwA_mukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  relieve.clp  	relieve0   "  ?id "  cinwA_mukwa )" crlf))
)

;"relieved","Adj","1.cinwA_mukwa"
;We were relieved to hear you were safe && sound.
;
(defrule relieve1
(declare (salience 4900))
(id-root ?id relieve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAhawa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relieve.clp 	relieve1   "  ?id "  rAhawa_xe )" crlf))
)

;default_sense && category=verb	pIdZA_kama_kara	0
;"relieve","VT","1.pIdZA_kama_karanA"
;Amritanjan relieves headache.
;--"2.sevA_se_mukwa_karanA"
;He was relieved of his job.
;--"3.kama karanA"
;The flyovers relieves traffic jams in the city. 
;--"4.kArya mukwa karanA"
;Now you should relieve the guard from his duty.
;--"5.sahAyawA karanA"
;Government is making efforts to relieve famine in Africa. 
;
;