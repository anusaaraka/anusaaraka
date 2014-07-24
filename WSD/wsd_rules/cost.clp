;$$$ Modified by Preeti(28-10-13)
;The use of cheap labour helped to keep costs down.[Cambridge Learner’s Dictionary]
;saswe Sramika ke upayoga ne Karce niyanwraNa karane meM sahAyawA kI.
(defrule cost_KarcA
(declare (salience 600))
(id-root ?id cost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word ?id costs)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cost.clp 	cost_KarcA   "  ?id "  KarcA )" crlf))
)

;@@@ Added by Preeti(28-10-13)
;An ankle injury can last a long time, as I know to my cost.[Cambridge Learner’s Dictionary]
;taKane kI cota lambe samaya waka cala sakawI hE jEsA ki mEM Bukwa_BogI_kI waraha jAnawA hUz.
(defrule cost_Bukwa_BogI_kI_waraha
(declare (salience 700))
(id-root ?id cost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?)
(kriyA-to_saMbanXI  ? ?id)
(id-root =(- ?id 2) to)
(id-root =(- ?id 1) my)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) =(- ?id 2) Bukwa_BogI_kI_waraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  cost.clp 	cost_Bukwa_BogI_kI_waraha   "  ?id " "(- ?id 1)" "(- ?id 2)" Bukwa_BogI_kI_waraha )" crlf))
)

;@@@ Added by Preeti(28-10-13)
;All these reforms will cost money. 
;ina saba suXAroM meM pEse lagezge.
(defrule cost_pEsA_laga
(declare (salience 850))
(id-root ?id cost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 money)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEsA_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cost.clp 	cost_pEsA_laga   "  ?id "  pEsA_laga )" crlf))
)

;@@@ Added by Preeti(28-10-13)
;It is going to cost me a lot of money to buy a new car. [Cambridge Learner’s Dictionary]
;eka nayI gAdI KarIxane meM mere bahuwa sAre pEse  Karca hoMge.
(defrule cost_Karca_ho
(declare (salience 950))
(id-root ?id cost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-root ?id1 buy|build)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Karca_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cost.clp 	cost_Karca_ho   "  ?id "  Karca_ho )" crlf))
)

;@@@ Added by Preeti(28-10-13)
;Financial worries cost her many sleepless nights.[ Oxford Advanced Learner's Dictionary]
;ArWika cinwAoM ki kimata use nxrArahiwa rAwoM se cukAnI padZI.
(defrule cost_kImawa_cukAnI_padZa
(declare (salience 900))
(id-root ?id cost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(id-cat_coarse =(+ ?id 1) pronoun) 
(id-word ?id costing))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kImawa_cukAnI_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cost.clp 	cost_kImawa_cukAnI_padZa   "  ?id "  kImawa_cukAnI_padZa)" crlf))
)

;@@@ Added by Preeti(28-10-13)
;His lazy attitude cost him his job. [Cambridge Learner’s Dictionary]
;usakI AlasI pravqwi ke kAraNa usako apanI nOkarI KonI padZI.
(defrule cost_KonA_padZa
(declare (salience 1000))
(id-root ?id cost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-object_2  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 job|life|game|place)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KonA_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cost.clp 	cost_KonA_padZa   "  ?id "  KonA_padZa )" crlf))
)
;#############################Defaults rule#######################################
;It costs $5 to send the package by airmail. [Cambridge Learner’s Dictionary]
;havAI dAka ke xvArA pEkega Bejane ke lie $5 xAma padawA hE.
(defrule cost_xAma_padZa
(declare (salience 500))
(id-root ?id cost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAma_padZa))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cost.clp 	cost_xAma_padZa   "  ?id "  xAma_padZa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  cost.clp      cost_xAma_padZa   "  ?id " kA )" crlf))
)
;$$$ Modified meaning from 'KarcA' to 'kImawa' by Preeti(28-10-13)
;We did not even make enough money to cover the cost of the food.[ Oxford Advanced Learner's Dictionary]
;hamne Bojana ki kImata ke liye paryApwa ho uwanA pEsA BI nahIM kamAyA.
;He rescued four people at the cost of his own life. [Cambridge Learner’s Dictionary]
;usane apane jIvana kI kImawa para cAra logoM ko bacAyA.
(defrule cost_kImawa
(declare (salience 500))
(id-root ?id cost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kImawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cost.clp 	cost_kImawa   "  ?id "  kImawa )" crlf))
)

;"cost","V","1.xAma_padZanA"
;--"2.nukasAna_pahuzcanA"
;This mistake cost him his job.

;################### Additional Examples ####################
;###################kImawa
;The cruise ship was built at a cost of $400 million. 
;Software is included at no extra cost. 
;The cost of living  has increased.
;We have to succeed at all costs.
;A new computer system has been installed at a cost of £80000.
;The plan had to be abandoned on grounds of cost.
;Consumers will have to bear the full cost of these pay increases.
;The total cost to you is £3000.
;###################Bukwa_BogI_kI_waraha
;An ankle injury can last a long time, as I know to my cost.
;###################KarcA
;He was ordered to pay £2000 costs.
;We have had to raise our prices because of rising costs.
;Opinion was divided on the potential costs and benefits of the scheme.
;She saved him from the fire but at the cost of her own life .
;He worked non-stop for three months, at considerable cost to his health.
;I felt a need to please people, whatever the cost in time and energy.
;###################xAma_padZa
;How much do these shoes cost?
;How much did it cost?
;Tickets cost ten dollars each.
;Calls to the helpline cost 38p per minute.
;The meal cost us about £40.
;###################KonA_padZa
;That one mistake almost cost him his life.
;A late penalty cost United the game .
;Such behaviour could cost you your place in the team.
;The closure of the factory is likely to cost 1000 jobs.
;###################Karca_ho
;The hospital will cost an estimated £2 million to build.
;###################kImawa_cukAnI_padZa
;The accident cost me a visit to the doctor.
;She would never know how much it cost him to tell her.
;This is costing the taxpayer £10 billion a year.
;###################pEsA_laga
;I didn't get it because it cost too much.
;Don't use too much of it—it cost a lot of money.
;################### Need to be handled ####################
;Parser problem
;I did not get it because it cost too much.
;Do not use too much of it SYMBOL-EMDASH it cost a lot of money.
