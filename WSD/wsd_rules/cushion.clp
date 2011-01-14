
(defrule cushion0
(declare (salience 5000))
(id-root ?id cushion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wakIyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cushion.clp 	cushion0   "  ?id "  wakIyA )" crlf))
)

(defrule cushion1
(declare (salience 4900))
(id-root ?id cushion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaxxI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cushion.clp 	cushion1   "  ?id "  gaxxI_lagA )" crlf))
)

;"cushion","VT","1.gaxxI_lagAnA"
;The lady had to cushion her child's seat
;
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
