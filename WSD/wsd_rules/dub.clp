
(defrule dub0
(declare (salience 5000))
(id-root ?id dub)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id daba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dub.clp 	dub0   "  ?id "  daba )" crlf))
)

(defrule dub1
(declare (salience 4900))
(id-root ?id dub)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upAXi_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dub.clp 	dub1   "  ?id "  upAXi_xe )" crlf))
)

;"dub","VT","1.upAXi_xenA"
;
;LEVEL 
;Headword : dub
;
;Examples --
;
;"nAma_XaranA"
;The papers dubbed him as 'Hoax'.
;aKabAroM ne usakA nAma 'hoksa' Xara xiyA hE.
;
;"sAuMda_trEka_xenA"
;The film is dubbed in Hindi.
;filma ko hinxI meM sAuMda_trEka xiyA gayA hE.
;
;isakA mUlArWa hE 'mUla ke sWAna para nayA raKanA nAma yA sAuMda_trEka' 
;awaH isake liye aMgrejZI Sabxa 'daba' ko hI liyA jA sakawA hE.
;
;sUwra : daba_karanA`
;
