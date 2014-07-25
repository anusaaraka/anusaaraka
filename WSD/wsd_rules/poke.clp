
(defrule poke0
(declare (salience 5000))
(id-root ?id poke)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUzDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " poke.clp	poke0  "  ?id "  " ?id1 "  DUzDZa  )" crlf))
)



;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Nell kept poking me in the arm.  [Cambridge]
(defrule poke1
(declare (salience 4900))
(id-root ?id poke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kqxanwa_karma  ?id1 ?id)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kozcawA_rahA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " poke.clp	poke1  "  ?id "  " ?id1 "  kozcawA_rahA )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;He poked the fire with his stick. [Cambridge]
(defrule poke2
(declare (salience 4800))
(id-root ?id poke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-with_saMbanXI  ?id ?)(kriyA-into_saMbanXI  ?id ?)(kriyA-by_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kozcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poke.clp 	poke2   "  ?id "  kozcA )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
; Grace poked her head round the door. [Cambridge]
(defrule poke3
(declare (salience 4700))
(id-root ?id poke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-vAkyakarma  ?id ?)(kriyA-around_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAzkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poke.clp 	poke3   "  ?id "  JAzkA )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
(defrule poke4
(declare (salience 4600))
(id-root ?id poke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root =(+ ?id 1) out)
(kriyA-object  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poke.clp 	poke4   "  ?id "  kuzca )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
; I thought I saw a bicycle wheel poking out of the water. [Cambridge]
(defrule poke5
(declare (salience 4500))
(id-root ?id poke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root =(+ ?id 1) out|up)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poke.clp 	poke5   "  ?id "  nikala )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;I gave him a poke in the back. [Cambridge]
;मैंने उसको मुक्का पीठ में दिया . 
(defrule poke6
(declare (salience 4400))
(id-root ?id poke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poke.clp 	poke6   "  ?id "  mukkA )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Someone had poked a message under the door. [OALD]
(defrule poke7
(declare (salience 4300))
(id-root ?id poke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-under_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poke.clp 	poke7   "  ?id "  dAlA )" crlf))
)



;@@@Added by Sonam Gupta MTech IT Banasthali 2013
(defrule poke8
(declare (salience 4200))
(id-root ?id poke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-through_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GusA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poke.clp 	poke8   "  ?id "  GusA_xe )" crlf))
)

;She was poking around her black saree in my cupboard.
;vaha apanI kAlI sAdZI merI alamArI meM DUzDZa rahI WI
(defrule poke9
(declare (salience 4100))
(id-root ?id poke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dakela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poke.clp 	poke9   "  ?id "  Dakela )" crlf))
)

;"poke","V","1.DakelanA"
;While playing children poke each other.
;--"2.Cexa banAnA"
;Drilling machines are used to poke through the wall.
;--"3.cuBonA"
;She poked her finger into the fruit.
;
;
