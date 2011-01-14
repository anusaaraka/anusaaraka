
(defrule aim0
(declare (salience 5000))
(id-root ?id aim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aim.clp 	aim0   "  ?id "  lakRya )" crlf))
)

;"aim","N","1.lakRya"
;Her aim is to become a pilot.
;
(defrule aim1
(declare (salience 4900))
(id-root ?id aim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aim.clp 	aim1   "  ?id "  lakRiwa_kara )" crlf))
)

;"aim","V","1.lakRiwa_karanA"
;She's aiming at a scholarship.
;--"2.niSAnA_banAnA"
;My remarks were not aimed at you.
;
;LEVEL 
;
;
;Headword : aim
;
;Examples --
;
;"aim","N","1.lakRya"
;Her aim is to become a pilot.
;usakA lakRya pAyaleta banane kA hE
;
;--"2.uxxeSya"
;Our aim is to increase sales in other countries. 
;hamArA uxxeSya xUsare xeSoM meM bikrI baDZAnA hE -manuRya apane lakRya waka pahuzcane ke liye kuCa uxxeSyoM ko banAkara unakA pAlana karawA hE-yahAz usakA lakRya bikrI baDZAnA hE.
;
;"aim","V","1.lakRiwa_karanA"
;She's aiming at a scholarship.
;vaha CAwravqwwi pAne para lakRiwa kara rahI hE.-CAwravqwi pAnA hI usakA lakRya hE-lakRya
;
;--"2.niSAnA_banAnA"-merI tippaNI ne use lakRya nahIM banAyA-lakRya banAnA-lakRya
;My remarks were not aimed at you.
;merI tippaNiyAz wuma para niSAnA nahIM banI.
;
;"3.niSAnA lagAnA"-usane lakRya sAXa kara niSAnA lagAyA-lakRya sAXanA-lakRya
;He aimed his gun at the target.
;usane lakRayAMka para niSAnA lagAyA.
;
;         nota:--uparyukwa 'aim' Sabxa ke liye saBI vAkyoM kA avalokana karane para  
;            yaha niRkarRa nikAlA jA sakawA hE ki saMjFA Ora kriyA ke saBI                        vAkyoM kA arWa eka hI nABikIya arWa 'lakRya' se nikAlA jA sakawA 
;             hE
;
;             sUwri : lakRya 
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
