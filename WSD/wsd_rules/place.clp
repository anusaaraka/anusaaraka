
(defrule place0
(declare (salience 5000))
(id-root ?id place)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id placing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  place.clp  	place0   "  ?id "  sWAna )" crlf))
)

;"placing","N","1.sWAna"
;Placings are offered on compleating the training.         
;
(defrule place1
(declare (salience 4900))
(id-root ?id place)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id placed )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sWAna_para_raKa))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  place.clp  	place1   "  ?id "  sWAna_para_raKa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  place.clp      place1   "  ?id " yA )" crlf))
)

(defrule place2
(declare (salience 4800))
(id-root ?id place)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id placed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pAyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  place.clp  	place2   "  ?id "  pAyA_huA )" crlf))
)

;"placed","Adj","1.pAyA huA"
;The placed horce was second in the race.
;
;
(defrule place3
(declare (salience 4700))
(id-root ?id place)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  place.clp 	place3   "  ?id "  raKa )" crlf))
)

;default_sense && category=verb	raKa xe	0
;"place","V","1.raKa xenA"
;The knife has been placed under the pillow.
;--"2.pahacAnanA"
;I didn't placed him as I was getting old.
;--"3.jArI raKanA"
;place a order for these pens to the stationer.
;--"4.nOkarI xenA"
;The company places && removes many labourers a year.
;
;
