
(defrule roll0
(declare (salience 5000))
(id-root ?id roll)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Dulaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " roll.clp	roll0  "  ?id "  " ?id1 "  Dulaka  )" crlf))
)

(defrule roll1
(declare (salience 4900))
(id-root ?id roll)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Dulaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " roll.clp	roll1  "  ?id "  " ?id1 "  Dulaka  )" crlf))
)

(defrule roll2
(declare (salience 4800))
(id-root ?id roll)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-over_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 luDZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " roll.clp	roll2  "  ?id "  " ?id1 "  luDZaka  )" crlf))
)

(defrule roll3
(declare (salience 4700))
(id-root ?id roll)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 luDZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " roll.clp	roll3  "  ?id "  " ?id1 "  luDZaka  )" crlf))
)

(defrule roll4
(declare (salience 4600))
(id-root ?id roll)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roll.clp 	roll4   "  ?id "  golA )" crlf))
)

;"roll","N","1.golA"
;He has wasted a roll of film by exposing it.
;book wrapper is sold in rolls.                                  
;--"2.sUcI"
;They have not included her parents name in electoral roll.  
;--"3.gadZagadZAhata"
;There was a loud drum roll from the restaurant.
;
(defrule roll5
(declare (salience 4500))
(id-root ?id roll)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id luDZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roll.clp 	roll5   "  ?id "  luDZaka )" crlf))
)

;"roll","V","1.luDZakanA"
(defrule roll6
(declare (salience 4400))
(id-root ?id roll)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roll.clp 	roll6   "  ?id "  GUmA )" crlf))
)

;"roll","VTI","1.GUmA"
;Keep the cameras rolling.
;--"2.luDakanA"
;She rolled over to her back.                
;The ball rolled down the hill.
;The marble fell && rolled away.                                       
;--"3.lapetanA"
;He always roll his own cigarettes.                                   
;Roll the cheese in mashed potato.                                    
;--"4.GumAnA"
;The high tides rolled the boat from side to side.                 
;--"5.XIme_calanA"
;The traffic rolled slowly forward.
;--"6.belanA"
;Roll out the pizza dough.                  
;
;LEVEL 
;
;
;Headword : roll
;
;Examples --
;
;--1.lipatA_huA <--gola-gola GUmA huA
;A roll of carpet.
;lipatA huA kArapeta
;
;--2.lapetanA <--gola-gola GumAnA
;Roll those papers in a right manner.
;una kAgajZAwoM ko sahI DaMga se lapeto/modZo.
;
;--3.gole
;A man with rolls of fat around his stomach.
;carabI ke gole jisake cAroM ora lataka rahe hoM EsA AxamI. <--lipatI huI carabI
;<--gola GUmI 
;
;--4.luDZakanA
;The stone rolled down the hill.
;pawWara pahAdZa se luDaka gayA. <--gola-gola Gumawe hue
;
;--5.gaja_gawi
;A slow, steady roll of the ship made.
;nAzva gaja gawi se Age baDZIM. <--manWara gawi <- laharoM ke sAWa GUmawI huI
;
;
;yahAz isa Sabxa ke lie wIna arWa nikalawe hE,jo ki sAre prayoga me lAe gae hE.
;
;sUwra : lipatanA[<gola-gola GUmanA]
;
;
