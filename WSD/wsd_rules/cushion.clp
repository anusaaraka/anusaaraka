
(defrule cushion0
;(declare (salience 5000));salience changed
(id-root ?id cushion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wakIyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cushion.clp 	cushion0   "  ?id "  wakIyA )" crlf))
)

;$$$  Modified by Preeti(21-5-14)
;"cushion","VT","1.gaxxI_lagAnA"
;The lady had to cushion her child's seat
;mahilA ko usake bacce kI sIta para gaxxI lagAnI padI.;hindi translation added 
(defrule cushion1
(declare (salience 4900))
(id-root ?id cushion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1);condition added
(id-root ?id1 seat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaxxI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cushion.clp 	cushion1   "  ?id "  gaxxI_lagA )" crlf))
)


;@@@ Added by Preeti(21-5-14)
;Various attempts were made to cushion the impact of unemployment. [Cambridge Learner’s Dictionary]
;berojagArI ke praBAva se bacAne ke liye viBinna prayAsa  kiye gaye We.
(defrule cushion2
(id-root ?id cushion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacA))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cushion.clp 	cushion2   "  ?id "  bacA )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  cushion.clp 	cushion2   "  ?id " se )" crlf)
)

;@@@ Added by Preeti(21-5-14)
;Overseas savings provide a cushion against tax rises at home. [Cambridge Learner’s Dictionary]
;vixeSI bacawa Gara meM kara vqxXi ke viruxXa rAhawa xewI hEM.
(defrule cushion3
(declare (salience 1000))
(id-root ?id cushion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-against_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAhawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cushion.clp 	cushion3   "  ?id "  rAhawa )" crlf))
)
;@@@ Added by Preeti(21-5-14)
;We did not have a financial cushion when my husband lost his job. [merriam-webster.com]
;hamAre pAsa koI ArWika rAhawa nahIM WI jaba mere pawi ne usakI nOkarI KoyI WI.
(defrule cushion4
(declare (salience 1050))
(id-root ?id cushion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 financial)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAhawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cushion.clp 	cushion4   "  ?id "  rAhawa )" crlf))
)


;LEVEL 
;
;
;Headword : cushion
;
;Examples --
;
;"cushion","N","1.gaxxA"
;She has kept beautiful cushions on her Deewan.
;usane apane xIvAna para suMxara gaxxiyAz raKI hEM
;
;"2.havA kA gaxxA"<--gaxxA 
;A hovercraft rides on a cushion of air.
;eka hovarakrAPta havA ke gaxxe para calawA hE
;
;"cushion","V","1.gaxxA lagAnA" 
;Mother has cushioned the bed for her child. 
;mAz ne apane bacce ke liye biswara para gaxxA lagAyA 
;
;"2.AGAwa kI wIvrawA ko kama karanA"(AGAwa-praSAmaka) 
;Powerful shock absorbers of an aeroplane cushion our landing. 
;havAIjahAja ke SakwiSAlI SOka-ebajOrabara jahAja ke uwarane me AGAwa kI wIvrawA ko kama kara
;xewe hEM
;                                                      
;          nota:--uparyukwa'cushion'Sabxa ke saBI vAkyoM se yaha niRkarRa nikAlA jA
;                sakawA hE ki saBI saMjFA Ora kriyA ke SabxoM kA arWa eka hI mUla 
;                arWa'gaxxA'se lA sakawe hE awaH isakA sUwra nimna prakAra liKa sakawe
;               hEM
;                     sUwra : gaxxA[<AGAwa-praSAmaka]    
;
;
;
;
; 
;
