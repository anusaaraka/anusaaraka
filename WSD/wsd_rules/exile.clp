
(defrule exile0
(declare (salience 5000))
(id-root ?id exile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeSa_nikAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exile.clp 	exile0   "  ?id "  xeSa_nikAlA )" crlf))
)

;"exile","N","1.xeSa_nikAlA"
;Ram was in exile for 10 years.
;
(defrule exile1
(declare (salience 4900))
(id-root ?id exile)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvAsiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exile.clp 	exile1   "  ?id "  nirvAsiwa_kara )" crlf))
)

;"exile","VT","1.nirvAsiwa_karanA"
;Ram was exiled for 10 years.
;
;LEVEL 
;Headword : exile
;
;Examples --
;
;"exile","N","1.nirvAsana" 
;After an exile of five years,he returned to India.
;vaha pAzca varRa nirvAsana ke paScAwa BArawa vApasa lOtA.
;--"2.nirvAsI"
;Many Vietnamese exiles were living in France during this period.
;isa xOrAna bahuwa se viyawanAmI nirvAsI PrAMsa mema raha rahe We.
;
;"exile","VT","1.xeSanikAlA_xenA" <--xeSa se nirvAsiwa kara xenA 
;He was exiled from his country because of his involvement in the security scam.
;surakRA GotAle meM usake SAmila hone ke kAraNa use apane xeSa se nirvAsiwa kara xiyA gayA.
;
;
;ukwa uxAharaNoM se lagawA hE ki 'exile' kA mUla arWa 'xeSa se bAhara' rahanA hE - yA apane mUla nivAsa se xUra rahanA. awaH hinxI meM isake liye 'nirvAsana' sahI prawIwa howA hE.
;
;anwarnihiwa sUwra ;
;
;                       nirvAsana {xUra rahanA}
;                         |
;             |-----------|----------|
;             |                      |
;           (saMjFA_prayoga)       (kriyA_prayoga)
;         jo xeSa se xUra rahe      kisI ko xeSa se xUra karanA
;              |                        |
;             nirvAsI                nirvAsiwa_karanA - xeSanikAlA_xenA
;
;
;             sUwra : xeSanikAlA_xenA^nirvAsI^nirvAsana  
;
