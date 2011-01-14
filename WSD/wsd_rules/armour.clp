
(defrule armour0
(declare (salience 5000))
(id-root ?id armour)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id armored )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kavacayukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  armour.clp  	armour0   "  ?id "  kavacayukwa )" crlf))
)

(defrule armour1
(declare (salience 4900))
(id-root ?id armour)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id armoured )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id baKwarabanxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  armour.clp  	armour1   "  ?id "  baKwarabanxa )" crlf))
)

(defrule armour2
(declare (salience 4800))
(id-root ?id armour)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id armoured )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kavacavAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  armour.clp  	armour2   "  ?id "  kavacavAlA )" crlf))
)

;"armoured","Adj","1.kavacavAlA"
;The vehicles are armoured with machine guns.
;--"2.kavaciwa_vAhana"
;An armoured division of Indian army set off for the LOC.
;
;
(defrule armour3
(declare (salience 4700))
(id-root ?id armour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kavaca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  armour.clp 	armour3   "  ?id "  kavaca )" crlf))
)

;default_sense && category=noun	kavaca	0
;"armour","N","1.kavaca"
;They wore their armours && started for the battlefield.
;--"2.DAla"
;The armour of these vehicles is quite protective.
;--"3.senA"
;They sat off with their armours to invade the U.A.E.
;
;
