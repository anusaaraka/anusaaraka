
(defrule leap0
(declare (salience 5000))
(id-root ?id leap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CalAMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leap.clp 	leap0   "  ?id "  CalAMga )" crlf))
)

;"leap","N","1.CalAMga"
;On seeing the lizard on the ground, in one leap, she was on the bed. 
;--"2.uCAla"
;The present leap in prices is totally unjustified.
;
(defrule leap1
(declare (salience 4900))
(id-root ?id leap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leap.clp 	leap1   "  ?id "  uCala )" crlf))
)

;@@@ Added by Nandini(17-12-13)
;The frog leapt into the tank. 
;meDaka ne tafkI ke aMxara CalAMga lagAyA.
(defrule leap2
(declare (salience 4950))
(id-root ?id leap)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 tank)
(kriyA-into_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CalAMga_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leap.clp 	leap2   "  ?id "  CalAMga_lagA )" crlf))
)

;@@@ Added by Nandini(17-12-13)
;He went into the water, holding Grandpa's hand, but leapt out almost immediately, exclaiming, It really is very cold, Grandpa.
;vaha Grandpa's kA hAWa pakadawe hue pAnI meM uwarA paranwu Grandpa yaha vAswava meM awyanwa TaNdA hE, cillAkara  wawkAla, bAhara kuxA.
(defrule leap3
(declare (salience 4950))
(id-root ?id leap)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out )
(kriyA-upasarga  ?id ?id1)
(kriyA-kriyA_viSeRaNa  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CalAMga_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " leap.clp	leap3  "  ?id "  " ?id1 "  kUxa )" crlf))
)

;@@@ Added by Nandini(17-12-13)
;I leapt at the chance to go to France.
;mEMne PrAMsa jAne ke avasara ko svikAra kiyA.
(defrule leap4
(declare (salience 4970))
(id-root ?id leap)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 chance)
(kriyA-at_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svikAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leap.clp 	leap4   "  ?id "  svikAra_kara )" crlf))
)

;"leap","V","1.uCalanA"
;He leapt across the barrier. 
;--"2.CalAMga_lagAnA"
;The frog leapt into the tank. 
;--"3.acAnaka_baDanA{xAma_Axi}"
;Due to transporter's strike the prices of vegetables leapt up.
;
