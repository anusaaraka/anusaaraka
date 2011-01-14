
(defrule neck0
(declare (salience 5000))
(id-root ?id neck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garaxana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neck.clp 	neck0   "  ?id "  garaxana )" crlf))
)

;"neck","N","1.garaxana"
;She felt something crawling on her neck.
;It was a bottle with a narrow neck.
;--"2.galA"
;She was wearing a dress with a low neck.
;
(defrule neck1
(declare (salience 4900))
(id-root ?id neck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gale_mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neck.clp 	neck1   "  ?id "  gale_mila )" crlf))
)

;"neck","VT","1.gale_milanA"
;They necked each other. 
;
;LEVEL 
;Headword : neck
;
;Examples --
;
;"neck","N","1.garaxana"
;She felt something crawling on her neck.
;use lagA ki usakI garaxana para kuCa reMga rahA hE.
;This wine bottle has a narrow neck.
;vAina kI isa bowala kI garaxana pawalI hE.
;
;--"2.galA"
;She was wearing a dress with a low neck.
;vaha nIce gale kA libAsa pahane WI.  <--libAsa kA galA <--garaxana
;
;--"3.barAbara" 
;The leading runners are neck && neck. 
;AgevAle XAvaka barAbara hEM <-- XAvakoM kA kaMXe se kaMXA milA kara rahanA <--garaxana se barAbara rahanA
;
;"neck","VT","1.gale milanA"
;They necked each other.
;vaha eka-xUsare ke gale mile. <--galA <--garaxana
;
;nota:--uparyukwa sAre vAkyoM kA nirIkRaNa karane para,"neck"Sabxa ke liye sUwra nimna  
;     prakAra liKa sakawe hEM
;
;sUwra : garaxana`  
;
;
;
;
;
;
;
;
;
;
;
