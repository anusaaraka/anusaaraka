;Modified this rule by Roja(17-07-12). As the fact is (affecting_id-affected_id-mng_to_be_overwrite) not in use.
(defrule last0
(declare (salience 5000))
(id-root ?id last)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
;(assert (affecting_id-affected_id-mng_to_be_overwrite ?id ?id1 -)) 
;(assert (id-wsd_root_mng ?id baca))
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baca))
(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_id-mng_to_be_overwrite   " ?*wsd_dir* "  last.clp       last0   "  ?id " " ?id1" - )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  last.clp 	last0   "  ?id "  baca )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  last.clp       last0   "  ?id " " ?id1" baca)" crlf))
)

;If you continue to eat at this rate,the chocolates are not going to last out the evening.
;agara wuma isI raPZwAra se KAwe rahoge wo SAma waka ye miTAiyAz nahIM baca pAezgI




;Rule modified by Meena(20.11.09)
;Last week I saw a great movie.
;If John was with Lisa last night , who went to the movie with Diane .
;last2 - last11 all included here in last1, therefore all these rules commented by Meena(14.11.09) 
(defrule last1
(declare (salience 4900))
(id-root ?id last|Last)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id1 ?id)(viSeRya-det_viSeRaNa  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  last.clp 	last1   "  ?id "  piCalA )" crlf))
)





;This rule is not required now because of last1(Meena(20.11.09))
(defrule last_det
(declare (salience 4800))
(id-root ?id last)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) determiner);added by Meena(14.11.09)
(id-word ?id1 month|week|monday|tuesday|wednesday|thursday|friday|saturday|sunday|January|february|march|april|may|june|july|august|september|october|november|december|night|day)
(viSeRya-det_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  last.clp    last_det   "  ?id "  piCalA )" crlf))
)




;Modified by Meena(20.3.10);increased the salience from 3800 to 5000 and added (and(viSeRya-det_viSeRaNa  ?id1 =(...)
;Rule added by Meena(20.11.09)
;Last as noun
;She was the last to arrive there.
;We caught the last bus for home . 
(defrule last2
(declare (salience 5000))
(id-root ?id last)
?mng <-(meaning_to_be_decided ?id)
(or(id-root =(- ?id 1) the)
   (and(viSeRya-det_viSeRaNa  ?id1 =(- ?id 1))(viSeRya-viSeRaNa  ?id1 ?id))
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AKirI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  last.clp      last2   "  ?id "  AKirI )" crlf))
)





(defrule last3
(declare (salience 3800))
(id-root ?id last)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) our|my|your|their|his|her)
;(viSeRya-RaRTI_viSeRaNa =(+ ?id 1)  =(- ?id 1))
(viSeRya-det_viSeRaNa =(+ ?id 1) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AKirI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  last.clp      last3   "  ?id "  AKirI )" crlf))
)




;Salience reduced by Meena(27.11.09)
(defrule last4
(declare (salience 0))
;(declare (salience 3800))
(id-root ?id last)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwima))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  last.clp 	last4   "  ?id "  anwima )" crlf))
)

;"last","Adj","1.anwima"
;He was the last person in the queue.
;The last thing that I expected of him was publishing  a defamatory article against his friend.
;The last bottle of blood.
;--"2.gawa"
;It was very cold last night.
;--"3.avaSiRta"
;--"4.carama/aXama"
;


;Added by Meena(26.11.09)
;I met him last in a market-place.
(defrule last5
(declare (salience 3800))
(id-root ?id last)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
(kriyA-object ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piCalI_bAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  last.clp      last5   "  ?id "  piCalI_bAra )" crlf))
)





;Added by Meena(28.11.09)
;He spoke last on this issue.
(defrule last6
(declare (salience 3700))
(id-root ?id last)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AKIra_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  last.clp      last6   "  ?id "  AKIra_meM )" crlf))
)


;Salience reduced by Meena(26.11.09)
(defrule last7
(declare (salience 0))
;(declare (salience 3700))
(id-root ?id last)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sabase_bAxa_meM/AKIra_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  last.clp 	last7   "  ?id "  sabase_bAxa_meM )" crlf))
)

;"last","Adv","1.sabase_bAxa_meM"
;He spoke last on this issue.
;--"2.anwima_bAra"
;I met him last in a market-place.


;Added  by Meena(20.3.10)
;How long will it last?
(defrule last8
(declare (salience 3600))
(id-root ?id last)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  last.clp      last8   "  ?id "  cala )" crlf))
)




;Salience reduced by Meena(20.3.10)
;Meaning changed from calawe_raha to calawA_raha       Meena(24.11.09)
(defrule last9
(declare (salience 0))
;(declare (salience 3600))
(id-root ?id last)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calawA_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  last.clp 	last9   "  ?id "  calawA_raha )" crlf))
)

;"last","V","1.calawe_rahanA"
;The bottle that he gave me lasted for a month.
;The well was dug at a huge cost; but the water did not last long.
;--"2.jIviwa_rahanA"
;How long could they have lasted without food && water?
;
;LEVEL 
;
;
;"last","Adj","1.anwima"-anwima
;He was the last person in the queue.
;vaha paMkwi meM anwima vyakwi WA
;
;The last thing that I expected of him was publishing  a defamatory article
; against his friend.-anwima                                                
;mEMne yaha socA BI nahIM WA ki vaha apane miwra ke KilAPa ninxAwmaka leKa CApane kI. 
;The last bottle of blood.-anwima
;rakwa kI anwima bowala
;--"2.gawa"-piCalI rAwa
;It was very cold last night.
;piCalI rAwa bahuwa TaNda WI
;
;"last","Adv","1.sabase bAxa meM" -anwa meM
;He spoke last on this issue.
;vaha sabase bAxa me isa samasyA para bolA.
;--"2.anwima bAra"
;I met him last in a market-place.
;mEM usase anwima bAra bAjZAra me milA WA
;
;"last","V","1.calawe rahanA"   <--bane rahanA
;The bottle that he gave me lasted for a month.-eka mAha calI 
;jo bowala usane muJe xI WI,eka mAha waka calI
;
;The well was dug at a huge cost;but the water did not last long.<--pAnI
;bahuwa xinoM waka nahIM rahA <-- bahuwa xinoM waka banA nahIM rahA
;
;--"2.jIviwa rahanA"<--kiwane xinoM waka calawe<--calawe rahawe<-- bane rahawe 
;How long could they have lasted without food && water?
;kiwane xinoM waka ve binA Bojana,pAnI ke jIviwa rahawe.
;
;
;      nota:--uparyukwa aMkiwa samaswa viSeRaNa,kriyA viSeRaNa,Ora kriyA ke vAkyoM
;           kA aXyayana karane para 'last' Sabxa ke liye nABikIya arWa mUlawaH  
;          xo arWoM 'anwima'Ora 'calawe rahanA'se nikAlA jA sakawA hE
;
;              sUwra : anwima/bane_rahanA
;
;
