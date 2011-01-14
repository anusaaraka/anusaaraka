
(defrule front0
(declare (salience 5000))
(id-root ?id front)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  front.clp 	front0   "  ?id "  Age )" crlf))
)

;"front","N","1.Age"
;The front of the building needs whitewash.
;
(defrule front1
(declare (salience 4900))
(id-root ?id front)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  front.clp 	front1   "  ?id "  sAmanA_kara )" crlf))
)

;"front","VTI","1.sAmanA_karanA"
;Beautiful flowers fronted the fence.
;
;LEVEL 
;Headword : front
;
;Examples --
;
;"front","N","1.agraBAga"
;The front of the building needs whitewash.
;imArawa ke agale hisse ko puwAI kI jarUrawa hE.
;--"2.Age"
;The garden in front of the house has beautiful lawns.
;Gara ke Age ke bagIce meM sunxara lOYna hEM.
;The teacher asked the boy to move to the front of the class.
;aXyApaka ne ladZake se klAsa meM Age kI ora bETane ko kahA.
;--"3.muKOtA"
;After the death of her son she has been putting on a brave front.
;apane bete kI mqwya ke bAxa se vaha bahAxurI kA muKOtA oDZe hE.<--kqwrima agraBAga
;The agency is just a front for his illegal dealings.
;ejeMsI usake gEra kAnUnI XaMXoM kA eka muKOtA hE. <--kqwrima agraBAga
;--"4.sImA"
;He is posted on the front. 
;usako sImA para wEnAwa kiyA gayA hE. <--Sawru kA sAmanA karane Age jAnA 
;
;"front","VTI","1.Age_honA"
;Beautiful flowers fronted the fence.
;bAdZa ke Age sunxara PUla hEM.
;--"2.aguAI karanA"
;The famous cricket player fronts the company.
;prasixXa kriketa KilAdZI kampanI kA aguAI karawA hE.<--Age honA <--agra
;
;
;sUwra : agra[BAga]
