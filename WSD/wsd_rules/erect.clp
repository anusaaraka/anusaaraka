
(defrule erect0
(declare (salience 5000))
(id-root ?id erect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXA_KadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  erect.clp 	erect0   "  ?id "  sIXA_KadA )" crlf))
)

;"erect","Adj","1.sIXA_KadA"
;Mr. A.K. Singh used to keep an erect posture at all times.
;
(defrule erect1
(declare (salience 4900))
(id-root ?id erect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  erect.clp 	erect1   "  ?id "  banA )" crlf))
)

;"erect","V","1.banAnA/KadA_karanA"
;Saleem  erected that huge mansion in a matter of a few months.
;
;LEVEL 
;Headword : erect
;
;Examples --
;
;"erect","Adj","1.sIXA/KadZA/UrXva"
;Always hold your head erect.
;apanA sira saxEva sIXA raKo
;
;"erect","VT","1.KadZA karanA" 
;He has erected a huge house near the bank.
;usane eka bahuwa badZA Gara bEMka ke pAsa KadZA karA hE
;Builder is going to erect a block of flats.
;nirmANakarwA PZlEtoM kA eka KaNda banAne jA rahA hE.
;Erect a tent at the clean place.
;svacCa sWAna para waMbU gAdZo.
;
;'erect' kA mUla arWa 'sIXA{Upara_kI_ora}' hE. awaH kriyA prayoga meM jaba koI
;cIjZa 'Upara kI ora sIXI banAI jAwI hE' wo usake liye 'erect' kA prayoga howA
;hE. isakA sUwra hogA -
;
;sUwra : sIXA_[KadZA_kara]
; 
