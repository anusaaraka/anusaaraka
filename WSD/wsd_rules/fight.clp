;Added by Meena(22.02.10)
;Modified by Krithika 26/11/2013  Salience reduced and example sentence added with translation by Krithika 26/11/2013
;There were children fighting in the playground. 
;खेल के मैदान में बच्चे आपस में लड़ रहें थे . (झगड़ा कर रहें थे )
;She is fighting for her rights . 
(defrule fight0
(declare (salience 5))
(id-root ?id fight)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fight.clp     fight0   "  ?id "  lada )" crlf))
)


;#############################Default rules ####################################
;Modified by Krithika 26/11/2013
;Salience removed and example sentence added with translation by Krithika 26/11/2013
;The older boys broke up the fight. 
;बड़े लड़को ने झगडना बंद कर दिया .
(defrule fight1
(id-root ?id fight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladZAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fight.clp 	fight1   "  ?id "  ladZAI )" crlf))
)

;______________________________________________________________________
;Modified by Krithika 26/11/2013
;Salience removed and example sentence added with translation by Krithika 26/11/2013
;The soldiers fought from house to house. 
;सिपाहियों ने घर –घर जाकर लड़ाई की .(सिपाही घर –घर जाकर लड़े.)
;"fight","N","1.ladZAI"
;There was a fight between Mohan && Shayam.
;He always gets into a fight with his friends on small issues.
;--"2.ladZane_kI_kRamawA"
;There was a lot of fight left in him.
;
(defrule fight2
(id-root ?id fight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladAI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fight.clp 	fight2   "  ?id "  ladAI_kara )" crlf))
)

;"fight","V","1.ladAI_karanA"
;The kids were fighting over a non-issue.
;

; ########################Additional examples#############################

;They fought with the North against the South. 
;The birds were fighting over (= competing for) a scrap of food. 
;They fought to the bitter end.
;They fought to the death.

;Jeff's always getting into/starting fights.
;I had a stand-up fight with her (= we argued strongly) about the telephone bill. 
;Have you got tickets for the big fight (= boxing competition) ? 
;We must continue the fight against homelessness. 
;He died last week after a long fight with cancer. 
;They put up a good fight (= played well) against a more experienced football team. 

