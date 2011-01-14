
(defrule abandon0
(declare (salience 5000))
(id-root ?id abandon)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id abandoned )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  abandon.clp  	abandon0   "  ?id "  CodZA_huA )" crlf))
)

;"abandoned","Adj","1.CodZA_huA"
;Abandoned children are kept in orphanages.
;
(defrule abandon1
(declare (salience 4900))
(id-root ?id abandon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abandon.clp 	abandon1   "  ?id "  CodZa_xe )" crlf))
)

;default_sense && category=verb	CodZa_xe	0
;"abandon","V","1.CodZa_xenA"
;A baby abandoned by its parents was found here.
;
;SabdasUtra explanation starts here 
;LEVEL 
;Headword : abandon
;
;Examples --
;
;"abandon","V","1.CodZa_xenA"
;A baby abandoned by its parents was found here.
;apane mAwA-piwA xvArA CodZa xiyA gayA eka baccA yahAz milA
;
;"abandoned","Adj","1.CodZA_huA"
;Abandoned children are kept in orphanages.
;CodZe hue bacce anAWAlayoM meM raKe jAwe hEM.
;
;"abandon","N","1.svacCanxawA/lAparavAhI"<--svayaM ko mukwa kara lenA hara ora se <-- 
;CodZa xenA  
;She was dancing with reckless abandon.
;vaha eka beparavAha svacCanxawA ke sAWa nAca rahI WI.
;
;         sUwra : CodZa_xenA[CodZA_huA]   
;
;
;
;
;
