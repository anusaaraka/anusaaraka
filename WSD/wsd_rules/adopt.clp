
(defrule adopt0
(declare (salience 5000))
(id-root ?id adopt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 policy)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adopt.clp 	adopt0   "  ?id "  apanA )" crlf))
)

(defrule adopt1
(declare (salience 4900))
(id-root ?id adopt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id goxa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adopt.clp 	adopt1   "  ?id "  goxa_le )" crlf))
)

;"adopt","V","1.goxa_lenA"
;Many orphans are adopted by childless couples.
;--"2.grahaNa_karanA"
;We must adopt only good values from other cultures.
;--"3.svIkAra_karanA"
;He was recently adopted as a government candidate.
;--"4.mAnanA"
;He adopted our rules.
;
;
;LEVEL 
;
;
;Headword : adopt
;
;Examples --
;
;"adopt","V","1.goxa_lenA"-kisI ko apanAnA-apanAnA
;Many orphans are adopted by childless couples.
;bahuwa se anAWa niHsaMwAna xaMpawI xvArA goxa liye jAwe hEM
;
;--"2.grahaNa_karanA"-apanAnA
;We must adopt only good values from other cultures.
;hameM xUsarI saMskqwiyoM se sirPa acCe nEwika mUlyoM ko grahaNa karanA cAhiye
;
;--"3.svIkAra_karanA"-svIkAra kiyA-apanA liyA-apanAnA 
;He was recently adopted as a government candidate.
;use hAla hI me sarakArI prawyASI ke rUpa meM svIkAra kiyA gayA.
;
;--"4.mAnanA"-apanA liyA-apanAnA
;He adopted our rules.
;usane hamAre niyamoM ko mAna liyA
;
;
;         nota:--Upara xiye gaye 'adopt'Sabxa ke liye kriyA ke saBI vAkyoM kA 
;             arWa kevala eka Sabxa 'apanAnA'se spaRta ho rahA hE.awaH isake liye
;          sUwra nimna prakAra xe sakawe hEM
;     
;sUwra : apanAnA`    
;
;
