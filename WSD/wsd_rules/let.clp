
(defrule let0
(declare (salience 5000))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nirASa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " let.clp	let0  "  ?id "  " ?id1 "  nirASa_kara  )" crlf))
)

;She let down the blind for not giving him a single penny.
;usane anXe ko eka BI pEsA na xekara nirASa kara xiyA
(defrule let1
(declare (salience 4900))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " let.clp	let1  "  ?id "  " ?id1 "  GatA  )" crlf))
)

;The children let down the tyres of the car.
;baccoM ne kAra ke pahiyoM kI havA ko nikAlakara kama kara xiyA
(defrule let2
(declare (salience 4800))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praveSa_karane_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " let.clp	let2  "  ?id "  " ?id1 "  praveSa_karane_xe  )" crlf))
)

;Please let him in!
;kqpyA use aMxara praveSa karane xo !
(defrule let3
(declare (salience 4700))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mukwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " let.clp	let3  "  ?id "  " ?id1 "  mukwa_ho  )" crlf))
)

;The policeman let him off with a warning.
;pulisavAle ne use cewAvanI xekara CodZa xiyA
(defrule let4
(declare (salience 4600))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 golI_xAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " let.clp	let4  "  ?id "  " ?id1 "  golI_xAga  )" crlf))
)

;The child let the gun off by mistake.
;bacce ne galwI se golI xAgZa xI
(defrule let5
(declare (salience 4500))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " let.clp	let5  "  ?id "  " ?id1 "  kama_ho  )" crlf))
)

;Don't go for walk as the rain hasn't yet let up.
;sEra ke lie mawa jAo kyoMki bAriSa aBI waka kama nahIM huI hE
(defrule let6
(declare (salience 4400))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 go)
(kriyA-go_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAne_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " let.clp let6 " ?id "  jAne_xe )" crlf)) 
)

(defrule let7
(declare (salience 4300))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 go)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAne_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " let.clp	let7  "  ?id "  " ?id1 "  jAne_xe  )" crlf))
)

(defrule let8
(declare (salience 4200))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikalane_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " let.clp let8 " ?id "  nikalane_xe )" crlf)) 
)

(defrule let9
(declare (salience 4100))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikalane_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " let.clp	let9  "  ?id "  " ?id1 "  nikalane_xe  )" crlf))
)

(defrule let10
(declare (salience 4000))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " let.clp let10 " ?id "  kama_ho )" crlf)) 
)

(defrule let11
(declare (salience 3900))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " let.clp	let11  "  ?id "  " ?id1 "  kama_ho  )" crlf))
)

(defrule let12
(declare (salience 3800))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMxara_Ane_xe));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " let.clp let12 " ?id "  aMxara_Ane_xe )" crlf)) 
)

(defrule let13
(declare (salience 3700))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aMxara_Ane_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " let.clp	let13  "  ?id "  " ?id1 "  aMxara_Ane_xe  )" crlf))
)

(defrule let14
(declare (salience 3600))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 room)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAye_para_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  let.clp 	let14   "  ?id "  kirAye_para_xe )" crlf))
)

(defrule let15
(declare (salience 3500))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 house)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAye_para_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  let.clp 	let15   "  ?id "  kirAye_para_xe )" crlf))
)

(defrule let16
(declare (salience 3400))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 building)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAye_para_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  let.clp 	let16   "  ?id "  kirAye_para_xe )" crlf))
)

(defrule let17
(declare (salience 3300))
(id-root ?id let)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumawi_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  let.clp 	let17   "  ?id "  anumawi_xe )" crlf))
)

;default_sense && category=verb	xo{Ane/jAne/karane iwyAxi}	0
;"let","V","1.xo{Ane/jAne/karane iwyAxi}"
;Let him go to the market.
;--"2.kirAye para xenA"
;I have let my apartment to a family from north.
;
;
