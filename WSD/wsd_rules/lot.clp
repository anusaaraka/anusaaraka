
(defrule lot0
(declare (salience 5000))
(id-root ?id lot)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 money )
(viSeRya-of_viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lot.clp 	lot0   "  ?id "  Dera )" crlf))
)

;Modified by sheetal
(defrule lot1
(declare (salience 4900))
(id-root ?id lot)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id =(+ ?id 2))
(id-word =(+ ?id 1) of)
(id-word =(- ?id 1) a)
(id-word =(+ ?id 2) time)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) (+ ?id 2) bahuwa_samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  lot.clp         lot1   "  ?id (+ ?id 1) (+ ?id 2) "  bahuwa_samaya )" crlf))
)
;Some people take a lot of time to acclimatize themselves to the new environment .

;(defrule lot1
;(declare (salience 4900))
;(id-root ?id lot)
;?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) of)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id bahuwa_badZA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lot.clp 	lot1   "  ?id "  bahuwa_badZA )" crlf))
;)

(defrule lot2
(declare (salience 4800))
(id-root ?id lot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_badI_saMKyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lot.clp 	lot2   "  ?id "  bahuwa_badI_saMKyA )" crlf))
)

;default_sense && category=noun	Dera	0
;"lot","N","1.Dera"
;This lot is meant for him.
;--"2.bahuwa badI saMKyA"
;Lots of people come to this temple every day.
;--"3.sWAna viSeRa"
;Parking lot.
;--"4.BAgya"
;I pity her lot.
;
;
