
;A band for connecting pulleys. 
;(Added by Harshit   6-6-2011  )
(defrule band0
(declare (salience 5200))
(id-root ?id band)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 connect|tie|bind|join|bunch)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PIwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " band.clp	band0  "  ?id "    PIwA  )" crlf))
)
;-------------------------------------------------------------------------------------------------------------
;You can recognize this species of bird by the banding on the wing.      
;(Added by Harshit   6-6-2011  )
(defrule band1
(declare (salience 5100))
(id-root ?id band)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id  banding)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XAriyAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  band.clp  	band1   "  ?id "  XAriyAz )" crlf))
)
;---------------------------------------------------------------------------------------------------------------------------
;Local people banded together to fight the company.
;They banded together to oust the chairman.
;(Added by Harshit Pahuja)  7-6-11
(defrule band2
(declare (salience 5200))
(id-root ?id band)
(id-word ?id1 together)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sazyukwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " band.clp	band2  "  ?id "    sazyukwa_ho  )" crlf))
)
;---------------------------------------------------------------------------------------------------------------------------

;I am also wearing clerical bands.
;There is a band of people.
;(Added by Harshit Pahuja)  7-6-11
(defrule band3
(declare (salience 4800))
(id-root ?id band)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bEMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " band.clp	band3  "  ?id "    bEMda  )" crlf))
)
;--------------------------------------------------------------------------------------------------------------------------
;Band them for connecting the rods
;(Added by Harshit Pahuja)  7-6-11

(defrule band4
(declare (salience 5000))
(id-root ?id band)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 connect|tie|band|join)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " band.clp	band4  "  ?id "    bAMXa  )" crlf))
)
;------------------------------------------------------------------------------------------------------------------------
(defrule band5
(declare (salience 6000))
(id-root ?id band)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 gold|ermine|silver|diamond|jewellery)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bEMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " band.clp	band5  "  ?id "    bEMda  )" crlf))
)
;Added by Harshit Pahuja 10-6-11
;But Freda and Norman Payne are tenuously linked by a statistical band of gold, just like Cassius and English China Clay, Moss and Bros, Steve and George Davis, and indeed David and Reckitt Coleman.   
;While I was bowing all around I suddenly perceived that the lady of the house, besides her daughters and other ladies, wore on their headdresses a pearl-coloured band, of three-fingers" breadth, embroidered in gold with the name of Haydn, and Mr Shaw wore the name on the two ends of his collar in the finest steel beads.
;----------------------------------------------------------------------------------------------------------------------------
(defrule band6
(declare (salience 6100))
(id-root ?id band)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 age|pay|limit|tax|narrow|broad|mortgage|money)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " band.clp	band6  "  ?id "    sImA  )" crlf))
)

;Added by Harshit Pahuja       10-6-11
;It would be wise to review all investments to take full advantage of a wife's personal tax allowance and the fact she is also entitled to her own basic rate tax band.
;"If you are made redundant before 5 April and you are normally taxed only at the basic rate, but a significant part of your compensation brings you into the higher rate band, then you could pick up a hefty tax bill," Mr Maas said.
;--------------------------------------------------------------------------------------------------------------------------
(defrule band7
(declare (salience 6200))
(id-root ?id band)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-from_saMbanXI ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bEMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " band.clp	band7  "  ?id "    bEMda  )" crlf))
)

;This is a all-man band.
;It's like saying an all-woman band are just vaginas on stage.
;----------------------------------------------------------------------------------------------------------------------------
(defrule band8
(declare (salience 0))
(id-root ?id band)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bEMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " band.clp	band8  "  ?id "    bEMda  )" crlf))
)
;(Added by Harshit Pahuja   12-6-11)
;It is a red band.
;
;----------------------------------------------------------------------------------------------------------------------------
